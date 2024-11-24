library(docstring)

estimate_meta_analytic_effect_size <- function(effect_size_df, outcome, include_subpopulation) {
  #' @description: Estimate a meta-analytic effect size on 
  #' the outcome of interest. Use random-effects meta-
  #' analysis and account for clustering of effect sizes
  #' within studies. 
  #' 
  #' @param effect_size_df: The data containing the effect sizes of
  #' individual studies. 
  #' @param outcome: A string containing the outcome of 
  #' interest. 
  #' @param include_subpopulation: A boolean indicating whether effect sizes estimated in subpopulations of the overall study population should be included in the meta-analysis
  #' 
  #' @return a {metafor} object containing the results of the meta-analysis. 
  
  outcome_effect_size_df <- effect_size_df %>%
    filter(out_skill_type == outcome)
  
  # Remove sub-population effect sizes, if specified
  if(include_subpopulation == FALSE) {
    outcome_effect_size_df <- outcome_effect_size_df %>%
      filter(pop_is_subpopulation == FALSE)
  }
  
  rma.mv(yi = hedges_g, V = standard_error_g^2, random = ~ 1|study, slab = study, data = outcome_effect_size_df)
}

conduct_meta_regression <- function(effect_size_df, outcome, include_subpopulation) {
  #' @description: Estimate a meta-analytic effect size on 
  #' the outcome of interest. Use random-effects meta-
  #' analysis and account for clustering of effect sizes
  #' within studies. 
  #' 
  #' @param effect_size_df: The data containing the effect sizes of
  #' individual studies. 
  #' @param outcome: A string containing the outcome of 
  #' interest. 
  #' @param include_subpopulation: A boolean indicating whether effect sizes estimated in subpopulations of the overall study population should be included in the meta-analysis
  #' 
  #' @return a {metafor} object containing the results of the meta-analysis. 
  
  outcome_effect_size_df <- effect_size_df %>%
    filter(out_skill_type == outcome)
  
  # Remove sub-population effect sizes, if specified
  if(include_subpopulation == FALSE) {
    outcome_effect_size_df <- outcome_effect_size_df %>%
      filter(pop_is_subpopulation == FALSE)
  }
  
  rma.mv(yi = hedges_g, V = standard_error_g^2, mods = ~ int_length_in_summers + int_scaffolded + int_self_selected_books + int_matched_skill_level_books + pop_percent_welfare_dependent + pop_avg_grade_level_at_int_start + out_num_months_since_int_end, random = ~ 1|study, slab = study, data = outcome_effect_size_df)
}
