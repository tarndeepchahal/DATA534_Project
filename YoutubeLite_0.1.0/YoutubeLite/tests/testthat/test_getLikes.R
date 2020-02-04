

library('testthat')

#library('jsonlite')
#library('purrr')
#library('dplyr')
#library('tidyr')
#library('plotly')

context("GetLikes.R")



test_that("The input URL is not valid",{
  expect_equal(get_likes(2334),"Problem with the URL input : -- Input CLASS should be 'character.")
})

test_that("Invalid url has been passed",{
  expect_equal(get_likes("asdad"),"Invalid Url Entered - No results fo this page")
})


test_that("No url has been passed",{
  expect_equal(get_likes(),"No URL has been passed")
})


test_that("Call the cuntion as a string",{
  expect_error(get_likes(adas))
})


test_that("Data type returned is a character",{
  expect_is(typeof(get_likes('https://www.youtube.com/watch?v=-DtSrdh5dHU')),'character')
})


