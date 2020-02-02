

library('testthat')

library('jsonlite')
library('purrr')
library('dplyr')
library('tidyr')
library('plotly')

context("GetDetails.R")


API_key = 'AIzaSyAdy65AkdC-E8--0DYB5osklXQFQOKAFjI'


test_that("The key you entered is invalid",{
  expect_error(get_details('AI'))
  
})

test_that("The function cannot be calle without params",{
  expect_error(get_details())
})


test_that("Output received",{
  expect_is(get_details('AIzaSyAdy65AkdC-E8--0DYB5osklXQFQOKAFjI','9S-U5f140-U'),'list')
})

get_details('AIzaSyAdy65AkdC-E8--0DYB5osklXQFQOKAFjI')


