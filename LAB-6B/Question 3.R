new.student <- data.frame(
  student_id = 6,
  student_name = "Farah",
  gender = "F",
  marks = 93,
  grade = "A",
  attendance = 96
)

student.data <- rbind(student.data, new.student)

print(student.data)
