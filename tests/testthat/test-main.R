data("testStatCourse")


test_that("insert basic course title and topic", {
  expect_equal(
    insert_course(title = testStatCourse["title"], testStatCourse["topic"]),
    "Introduction to statistics - NA"
    )
})

test_that("Send warning if one parameter is more than length 1", {
  expect_warning(
    insert_course(c(testStatCourse["title"],"second element"),
                                testStatCourse["topic"])
    )
  expect_warning(
    insert_course(title = testStatCourse["title"],
                  topic = c(testStatCourse["topic"],"another element")
                )
    )
})


