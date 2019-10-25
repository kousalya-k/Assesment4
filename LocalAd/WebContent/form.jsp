<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Form Page</title>
</head>
<body>
<a href="index.html">Back</a>
  <div class="container">
    <form action="job.do" method="get">
  <h3>Welcome! Please Fill This form!</h3>
  
  <div class="form-group mb-2">
    <label for="title">Posting title</label>
    <input type="text" class="form-control" name="title" id="title"  placeholder="Enter title">
    </div>
  <div class="form-group mx-sm-3 mb-2">
    <label for="City">City or Neighbourhood</label>
    <input type="text" class="form-control" id="City"  name="city" placeholder="Enter City">
  </div>
  <div class="form-group  mb-2">
    <label for="Code">Postal Code</label>
    <input type="number" class="form-control" id="Code" name="code" placeholder="Enter Code">
  </div>
   <div class="form-group col-md-4">
    <label for="desc">Description</label>
    <textarea class="form-control" id="desc" name="desc" rows="5"></textarea>
  </div>
  <div class="form-group  col-md-4">
    <label for="email">Email</label>
    <input type="email" class="form-control" id="email" name="email " placeholder="Enter Email">
  </div>
  <div class="form-group  col-md-4">
    <label for="no">Phone No</label>
    <input type="number" class="form-control" id="no"  name="no" placeholder="Enter number">
  </div> 
 
  <input type="submit" class="btn btn-primary" value="Submit">
</form>
  
  </div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>