

library('testthat')

#library('jsonlite')
#library('purrr')
#library('dplyr')
#library('tidyr')
#library('plotly')

context("GetDetails.R")



test_that("No url has been passed",{
  expect_equal(get_details(),"No URL has been passed")
  expect_equal(get_details("asdad"),"Invalid Url Entered - No results fo this page")
  expect_equal(get_details(2334),"Problem with the URL input : -- Input CLASS should be 'character.")
  
})

test_that("Call the cuntion as a string",{
  expect_error(get_details(adas))
})


test_that("Data type returned is a character",{
  expect_is(typeof(get_details('https://www.youtube.com/watch?v=-DtSrdh5dHU')),'character')
})


