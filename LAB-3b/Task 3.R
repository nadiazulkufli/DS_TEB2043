student_names <- c("Robert", "Hemsworth", "Scarlett", "Evans", "Pratt", 
                   "Larson", "Holland", "Paul", "Simu", "Renner")
chemistry_scores <- c(59, 71, 83, 68, 65, 57, 62, 92, 92, 59)
physics_scores   <- c(89, 86, 65, 52, 60, 67, 40, 77, 90, 61)
student_records <- list(
  Chemistry = setNames(chemistry_scores, student_names),
  Physics   = setNames(physics_scores, student_names)
)
fail_chem <- sum(student_records$Chemistry <= 49)
fail_phys <- sum(student_records$Physics <= 49)
max_chem_val <- max(student_records$Chemistry)
max_phys_val <- max(student_records$Physics)

best_chem_student <- names(student_records$Chemistry)[student_records$Chemistry == max_chem_val]
best_phys_student <- names(student_records$Physics)[student_records$Physics == max_phys_val]
print(paste("Number of students who failed Chemistry:", fail_chem))
print(paste("Number of students who failed Physics:  ", fail_phys))

print(paste("Highest score in Chemistry:", max_chem_val, "by", paste(best_chem_student, collapse = ", ")))
print(paste("Highest score in Physics:  ", max_phys_val, "by", paste(best_phys_student, collapse = ", ")))
