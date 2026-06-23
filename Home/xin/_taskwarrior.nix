{ ... }: {
  programs.taskwarrior = {
    enable = true;
    dataLocation = "~/.local/share/task";
    config = {
      "context.study"    = "+study or +class";
      "context.research" = "+research";
      "context.admin"    = "+admin";

      "urgency.user.tag.deadline.coefficient" = 12.0;
      "urgency.user.tag.today.coefficient"    = 10.0;

      color = "on";

      "report.next.columns" = "id,start.age,priority,project,tags,due.relative,description,urgency";
      "report.next.sort"    = "urgency-";
    };
  };
}
