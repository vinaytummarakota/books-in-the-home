# "Books in the Home" Meta-Analysis

This living meta-analysis estimates the causal impact of distributing books to children on their reading achievement and oral reading fluency. It is featured in my Substack article, "Do books in the home really improve academic achievement?".

## Inclusion Criteria

To be included in the meta-analysis, a study needed to satisfy the following inclusion criteria:

-   Randomly assign students/schools to control vs treatment
-   The primary intervention component consists of distributing books to children to read at home
-   Control could not have received a similar intervention by other means (e.g. Cohort 2 of McGill-Franzen, Allington, and Ward (2020))
-   Provide sufficient information to estimate/approximate covariate-adjusted effect sizes in terms of Hedge's $g$

These inclusion criteria identified 10 studies.

## Effect Size Calculations

All effect size calculations are described from start-to-finish in `coded_effect_sizes_documentation.pdf`.

## Data Dictionary

The spreadsheet `code_effect_sizes.xlsx` contains the effect sizes used in the meta-analysis. This spreadsheet contains the following columns:

-   `study`: String, the author(s) of the study along with the year of publication.
-   `int_length_in_summers`: Integer, the length of the intervention as a function of the \# of summers that it took place (as the vast majority of interventions were designed to curb summer learning loss).
-   `int_scaffolded`: Boolean, indicates whether the intervention was scaffolded (e.g. additional curriculum was used to support the intervention)
-   `int_self_selected_books`: Boolean, indicates whether books were self-selected by the student.
-   `int_matched_skill_level_books`: Boolean, indicates whether books were matched to students' reading level
-   `pop_is_subpopulation`: Boolean, indicates whether the corresponding effect size was estimated in the overall sample or in a subset of the overall sample
-   `pop_percent_welfare_dependent`: Float, the % of students who in the sample who were welfare-dependent (e.g. use free/reduced-price lunch)
-   `pop_avg_grade_level_at_int_start`: Float, the average grade level of students at the start of the intervention.
-   `out_assessment`: String, the name of the assessment used to measure the outcome in question
-   `out_skill_type`: String, the name of the skill being tested by the assessment
-   `out_num_months_since_int_end`: Integer, the time when the outcome was assessed, measured in \# of months since the end of the intervention.
-   `sample_size_treatment`: Integer, the sample size of the group which received the intervention.
-   `sample_size_control`: Integer, the sample size of the group which did not receive the intervention.
-   `cohens_d`: Float, the effect size measured as Cohen's $d$.
-   `standard_error_d`: Float, the standard error corresponding to the effect size measured as Cohen's $d$
-   `notes`: String, any additional context pertaining to the corresponding study

## Contact Information

If you identify any problems with this meta-analysis, feel free to either leave a comment below the corresponding Substack article or send an email to [unboxingpolitics\@gmail.com](mailto:unboxingpolitics@gmail.com){.email}. Any and all constructive feedback is welcomed!
