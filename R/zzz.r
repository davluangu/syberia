.onAttach <- function(...) {
  if (!identical(silent <- getOption("syberia.silent"), TRUE))
    message(paste0("Loading ", crayon::red('Syberia'), "...\n"))

  load_github_packages(.github_packages, silent = silent)

  if (exists('run', envir = .GlobalEnv, inherits = FALSE))
    rm('run', envir = .GlobalEnv)
  makeActiveBinding('run', function() run_model, .GlobalEnv)

  if (exists('run_next', envir = .GlobalEnv, inherits = FALSE))
    rm('run_next', envir = .GlobalEnv)  
  makeActiveBinding("run_next", function() run(, active_runner()$next_stage()), .GlobalEnv)
  
  if (exists('rerun', envir = .GlobalEnv, inherits = FALSE))
    rm('rerun', envir = .GlobalEnv)  
  makeActiveBinding("rerun", function() run(, active_runner()$current_stage()), .GlobalEnv)
  
  addTaskCallback(auto_run)
}

