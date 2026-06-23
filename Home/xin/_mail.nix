{ inputs, pkgs, ... }: {
  programs.thunderbird = {
    enable = true;
    profiles.xin = {
      isDefault = true;
      settings = {
        "mail.spellcheck.inline"      = false;
        "mailnews.default_sort_type"  = 18;
        "mailnews.default_sort_order" = 2;
      };
    };
  };

  home.file.".config/aerc/aerc.conf".text = ''
    [ui]
    timestamp-format = 2006-01-02 15:04
    this-day-time-format = 15:04
    this-year-time-format = Jan 02
    sidebar-width = 28
    preview-height = 12

    [viewer]
    pager = less -R
    alternatives = text/plain,text/html
    header-layout = From,To|Cc,Date,Subject

    [compose]
    editor = nvim
    header-layout = To,From,Cc,Subject

    [filters]
    text/html = w3m -T text/html -dump -o display_image=false -o display_link_number=true
    text/plain = cat
  '';

  home.file.".config/aerc/binds.conf".text = ''
    [messages]
    q = :quit<Enter>
    j = :next-message<Enter>
    k = :prev-message<Enter>
    g = :select-message 0<Enter>
    G = :select-message -1<Enter>
    <Enter> = :open-message<Enter>
    d = :prompt 'Delete (y/n)?' 'delete-message'<Enter>
    D = :delete-message<Enter>
    a = :archive flat<Enter>
    r = :reply -q<Enter>
    R = :reply -aq<Enter>
    c = :compose<Enter>
    / = :search<space>
    n = :next-result<Enter>
    N = :prev-result<Enter>

    [view]
    q = :close<Enter>
    j = :next-part<Enter>
    k = :prev-part<Enter>
    J = :next-message<Enter>
    K = :prev-message<Enter>
    f = :forward<Enter>
    r = :reply -q<Enter>
    R = :reply -aq<Enter>
    d = :delete-message<Enter>
    a = :archive flat<Enter>
  '';

  home.file.".mbsyncrc".text = ''
    IMAPAccount ironshark
    Host imap.gmail.com
    Port 993
    User xin@ironshark.org
    PassCmd "sops -d --extract '[\"google-app-password\"]' ${inputs.self}/_secrets.yaml"
    SSLType IMAPS
    CertificateFile /etc/ssl/certs/ca-certificates.crt

    IMAPStore ironshark-remote
    Account ironshark

    MaildirStore ironshark-local
    SubFolders Verbatim
    Path ~/.local/share/mail/ironshark/
    Inbox ~/.local/share/mail/ironshark/Inbox

    Channel ironshark
    Far :ironshark-remote:
    Near :ironshark-local:
    Patterns * ![Gmail]* "[Gmail]/Sent Mail" "[Gmail]/Starred" "[Gmail]/All Mail"
    Create Both
    Expunge Both
    SyncState *
  '';

  home.file.".config/notmuch/config".text = ''
    [database]
    mail_root=~/.local/share/mail
    path=~/.local/share/mail/.notmuch

    [user]
    name=Xin IronShark
    primary_email=xin@ironshark.org

    [new]
    tags=unread;inbox;

    [search]
    exclude_tags=deleted;spam;

    [maildir]
    synchronize_flags=true
  '';

  systemd.user.services.mbsync = {
    Unit.Description = "Sync mail via mbsync";
    Service = {
      ExecStart     = "${pkgs.isync}/bin/mbsync -a";
      ExecStartPost = "${pkgs.notmuch}/bin/notmuch new";
    };
  };

  systemd.user.timers.mbsync = {
    Unit.Description = "Sync mail every 5 minutes";
    Timer = {
      OnBootSec       = "2min";
      OnUnitActiveSec = "5min";
    };
    Install.WantedBy = [ "timers.target" ];
  };
}
