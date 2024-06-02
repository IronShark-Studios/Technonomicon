{ inputs, outputs, lib, config, pkgs, ... }: {

  home = {
    packages = with pkgs; [
      lf
    ];

    file = {
      "lfrc" = {
        target = ".config/lf/lfrc";
        text = ''
set hidden true
set ignorecase true
set icons true

map n down
map e up
map <enter> open
map <space> updir
        '';
      };
      "lfrc-icons" = {
        target = ".config/lf/icons";
        text = ''
# file types (with matching order)
ln             # LINK
or             # ORPHAN
tw      t       # STICKY_OTHER_WRITABLE
ow             # OTHER_WRITABLE
st      t       # STICKY
di             # DIR
pi      p       # FIFO
so      s       # SOCK
bd      b       # BLK
cd      c       # CHR
su      u       # SETUID
sg      g       # SETGID
ex             # EXEC
fi             # FILE

# disable some default filetype icons, let them choose icon by filename
# ln             # LINK
# or             # ORPHAN
# tw              # STICKY_OTHER_WRITABLE
# ow              # OTHER_WRITABLE
# st              # STICKY
# di             # DIR
# pi              # FIFO
# so              # SOCK
# bd              # BLK
# cd              # CHR
# su              # SETUID
# sg              # SETGID
# ex              # EXEC
# fi             # FILE

# file extensions (vim-devicons)
*.styl              00;38;2;141;193;73
*.sass              00;38;2;245;83;133
*.scss              00;38;2;245;83;133
*.htm               00;38;2;227;76;38
*.html              00;38;2;227;76;38
*.slim              00;38;2;227;76;38
*.haml              00;38;2;234;234;225
*.ejs               00;38;2;203;203;65
*.css               00;38;2;86;61;124
*.less              00;38;2;86;61;124
*.md                00;38;2;81;154;186
*.mdx               00;38;2;81;154;186
*.markdown          00;38;2;81;154;186
*.rmd               00;38;2;81;154;186
*.json              00;38;2;149;157;165
*.webmanifest       00;38;2;241;224;90
*.js                00;38;2;203;203;65
*.mjs               00;38;2;241;224;90
*.jsx               00;38;2;81;154;186
*.rb                00;38;2;112;21;22
*.gemspec           00;38;2;112;21;22
*.rake              00;38;2;112;21;22
*.php               00;38;2;160;116;196
*.py                00;38;2;81;154;186
*.pyc               00;38;2;81;154;186
*.pyo               00;38;2;81;154;186
*.pyd               00;38;2;81;154;186
*.coffee            00;38;2;203;203;65
*.mustache          00;38;2;227;121;51
*.hbs               00;38;2;240;119;43
*.conf              00;38;2;109;128;134
*.ini               00;38;2;109;128;134
*.yml               00;38;2;149;157;165
*.yaml              00;38;2;149;157;165
*.toml              00;38;2;109;128;134
*.bat               00;38;2;193;241;46
*.mk                00;38;2;109;128;134
*.jpg               00;38;2;160;116;196
*.jpeg              00;38;2;160;116;196
*.bmp               00;38;2;160;116;196
*.png               00;38;2;160;116;196
*.webp              00;38;2;160;116;196
*.gif               00;38;2;160;116;196
*.ico               00;38;2;203;203;65
*.twig              00;38;2;141;193;73
*.cpp               00;38;2;81;154;186
*.c++               00;38;2;89;158;255
*.cxx               00;38;2;81;154;186
*.cc                00;38;2;81;154;186
*.cp                00;38;2;81;154;186
*.c                 00;38;2;89;158;255
*.cs            󰌛    00;38;2;89;103;6
*.h                 00;38;2;160;116;196
*.hh                00;38;2;160;116;196
*.hpp               00;38;2;160;116;196
*.hxx               00;38;2;160;116;196
*.hs                00;38;2;160;116;196
*.lhs               00;38;2;160;116;196
*.nix               00;38;2;126;186;228
*.lua               00;38;2;81;160;207
*.java              00;38;2;204;62;68
*.sh                00;38;2;137;224;81
*.fish              00;38;2;137;224;81
*.bash              00;38;2;137;224;81
*.zsh               00;38;2;137;224;81
*.ksh               00;38;2;137;224;81
*.csh               00;38;2;137;224;81
*.awk               00;38;2;137;224;81
*.ps1               00;38;2;137;224;81
*.ml            λ    00;38;2;227;121;51
*.mli           λ    00;38;2;227;121;51
*.diff              00;38;2;65;83;91
*.db                00;38;2;218;216;216
*.sql               00;38;2;218;216;216
*.dump              00;38;2;218;216;216
*.clj               00;38;2;141;193;73
*.cljc              00;38;2;141;193;73
*.cljs              00;38;2;81;154;186
*.edn               00;38;2;81;154;186
*.scala             00;38;2;204;62;68
*.go                00;38;2;81;154;186
*.dart              00;38;2;3;88;156
*.xul               00;38;2;227;121;51
*.sln               00;38;2;133;76;199
*.suo               00;38;2;133;76;199
*.pl                00;38;2;81;154;186
*.pm                00;38;2;81;154;186
*.t                 00;38;2;81;154;186
*.rss               00;38;2;251;157;59
'*.f#'              00;38;2;81;154;186
*.fsscript          00;38;2;81;154;186
*.fsx               00;38;2;81;154;186
*.fs                00;38;2;81;154;186
*.fsi               00;38;2;81;154;186
*.rs                00;38;2;222;165;132
*.rlib              00;38;2;222;165;132
*.d                 00;38;2;66;120;25
*.erl               00;38;2;184;57;152
*.hrl               00;38;2;184;57;152
*.ex                00;38;2;160;116;196
*.exs               00;38;2;160;116;196
*.eex               00;38;2;160;116;196
*.leex              00;38;2;160;116;196
*.heex              00;38;2;160;116;196
*.vim               00;38;2;1;152;51
*.ai                00;38;2;203;203;65
*.psd               00;38;2;81;154;186
*.psb               00;38;2;81;154;186
*.ts                00;38;2;81;154;186
*.tsx               00;38;2;81;154;186
*.jl                00;38;2;162;112;186
*.pp                00;38;2;255;166;26
*.vue               00;38;2;141;193;73
*.elm               00;38;2;81;154;186
*.swift             00;38;2;227;121;51
*.xcplayground      00;38;2;227;121;51
*.tex           󰙩    00;38;2;61;97;23
*.r             󰟔    00;38;2;53;138;91
*.rproj         󰗆   00;38;2;53;138;91
*.sol           󰡪    00;38;2;81;154;186
*.pem               00;38;2;205;155;62

# file names (vim-devicons) (case-insensitive not supported in lf)
*gruntfile.coffee           00;38;2;227;121;51
*gruntfile.js               00;38;2;227;121;51
*gruntfile.ls               00;38;2;227;121;51
*gulpfile.coffee            00;38;2;204;62;68
*gulpfile.js                00;38;2;204;62;68
*gulpfile.ls                00;38;2;204;62;68
*mix.lock                   00;38;2;160;116;196
*dropbox                    00;38;2;0;97;254
*.ds_store                  00;38;2;77;90;94
*.gitconfig                 00;38;2;65;83;91
*.gitignore                 00;38;2;65;83;91
*.gitattributes             00;38;2;65;83;91
*.gitlab-ci.yml             00;38;2;226;67;41
*.bashrc                    00;38;2;137;224;81
*.zshrc                     00;38;2;137;224;81
*.zshenv                    00;38;2;137;224;81
*.zprofile                  00;38;2;137;224;81
*.vimrc                     00;38;2;1;152;51
*.gvimrc                    00;38;2;1;152;51
*_vimrc                     00;38;2;1;152;51
*_gvimrc                    00;38;2;1;152;51
*.bashprofile               00;38;2;137;224;81
*favicon.ico                00;38;2;203;203;65
*license                    00;38;2;203;203;65
*node_modules               00;38;2;232;39;75
*react.jsx                  00;38;2;81;154;186
*procfile                   00;38;2;160;116;196
*dockerfile                 00;38;2;81;154;186
*docker-compose.yml         00;38;2;81;154;186
*docker-compose.yaml        00;38;2;81;154;186
*compose.yml                00;38;2;81;154;186
*compose.yaml               00;38;2;81;154;186
*rakefile                   00;38;2;112;21;22
*config.ru                  00;38;2;112;21;22
*gemfile                    00;38;2;112;21;22
*makefile                   00;38;2;109;128;134
*cmakelists.txt             00;38;2;109;128;134
*robots.txt             󰚩    00;38;2;109;128;134

# file names (case-sensitive adaptations)
*Gruntfile.coffee           00;38;2;227;121;51
*Gruntfile.js               00;38;2;227;121;51
*Gruntfile.ls               00;38;2;227;121;51
*Gulpfile.coffee            00;38;2;204;62;68
*Gulpfile.js                00;38;2;204;62;68
*Gulpfile.ls                00;38;2;204;62;68
*Dropbox                    00;38;2;0;97;254
*.DS_Store                  00;38;2;193;241;46
*LICENSE                    00;38;2;203;203;65
*React.jsx                  00;38;2;81;154;186
*Procfile                   00;38;2;160;116;196
*Dockerfile                 00;38;2;81;154;186
*Docker-compose.yml         00;38;2;81;154;186
*Docker-compose.yaml        00;38;2;81;154;186
*Rakefile                   00;38;2;112;21;22
*Gemfile                    00;38;2;112;21;22
*Makefile                   00;38;2;109;128;134
*CMakeLists.txt             00;38;2;109;128;134

# file patterns (vim-devicons) (patterns not supported in lf)
# .*jquery.*\.js$             00;38;2;227;117;187
# .*angular.*\.js$            00;38;2;226;50;55
# .*backbone.*\.js$           00;38;2;0;113;181
# .*require.*\.js$            00;38;2;244;74;65
# .*materialize.*\.js$        00;38;2;238;110;115
# .*materialize.*\.css$       00;38;2;238;110;115
# .*mootools.*\.js$           00;38;2;236;236;236
# .*vimrc.*                   00;38;2;1;152;51
# Vagrantfile$                00;38;2;21;99;255

# file patterns (file name adaptations)
*jquery.min.js              00;38;2;227;117;187
*angular.min.js             00;38;2;226;50;55
*backbone.min.js            00;38;2;0;113;181
*require.min.js             00;38;2;244;74;65
*materialize.min.js         00;38;2;238;110;115
*materialize.min.css        00;38;2;238;110;115
*mootools.min.js            00;38;2;236;236;236
*vimrc                      00;38;2;1;152;51
Vagrantfile                 00;38;2;21;99;255

# archives or compressed (extensions from dircolors defaults)
*.tar   
*.tgz   
*.arc   
*.arj   
*.taz   
*.lha   
*.lz4   
*.lzh   
*.lzma  
*.tlz   
*.txz   
*.tzo   
*.t7z   
*.zip   
*.z     
*.dz    
*.gz    
*.lrz   
*.lz    
*.lzo   
*.xz    
*.zst   
*.tzst  
*.bz2   
*.bz    
*.tbz   
*.tbz2  
*.tz    
*.deb   
*.rpm   
*.jar   
*.war   
*.ear   
*.sar   
*.rar   
*.alz   
*.ace   
*.zoo   
*.cpio  
*.7z    
*.rz    
*.cab   
*.wim   
*.swm   
*.dwm   
*.esd   

# image formats (extensions from dircolors defaults)
*.jpg   
*.jpeg  
*.mjpg  
*.mjpeg 
*.gif   
*.bmp   
*.pbm   
*.pgm   
*.ppm   
*.tga   
*.xbm   
*.xpm   
*.tif   
*.tiff  
*.png   
*.svg   
*.svgz  
*.mng   
*.pcx   
*.mov   
*.mpg   
*.mpeg  
*.m2v   
*.mkv   
*.webm  
*.ogm   
*.mp4   
*.m4v   
*.mp4v  
*.vob   
*.qt    
*.nuv   
*.wmv   
*.asf   
*.rm    
*.rmvb  
*.flc   
*.avi   
*.fli   
*.flv   
*.gl    
*.dl    
*.xcf   
*.xwd   
*.yuv   
*.cgm   
*.emf   
*.ogv   
*.ogx   

# audio formats (extensions from dircolors defaults)
*.aac   
*.au    
*.flac  
*.m4a   
*.mid   
*.midi  
*.mka   
*.mp3   
*.mpc   
*.ogg   
*.ra    
*.wav   
*.oga   
*.opus  
*.spx   
*.xspf  

# other formats
*.pdf        00;38;2;179;11;0
        '';
      };
    };
  };
}
