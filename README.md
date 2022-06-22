# Rails Simple API

Build a REST API service for a warehouse platform. The basic functionality is to add and show product information as well as list all the products in the system.

Each product has the following structure:
- *id*: the unique ID of the product
- *name*: the name of the product
- *description*: the description of the product
- *vendor*: the product vendor name
- *price*: the price of the product, represented as a non-negative integer denoting cents
- *currency*: the currency of the product (either EUR or USD)
- *stock*: the number of the product items in the warehouse
- *image_url*: the URL of the product image
- *sku*: the product stock-keeping unit (SKU)

The REST service must expose the **/products** endpoint, which allows for managing the collection of products in the following way:

**POST** request to **/products**:
- Validates de following conditions:
  - *name* is set
  - The length of *name* is not more than 40 characters
  - The length of *vendor* (if provided) is not more than 100 characters
  - *price* is set
  - *price* is an integer
  - *currency* is set
  - *currency* is USD or EUR
  - *stock* is set
  - *stock* is an integer
- If any of the above requirements fail, the server should return the response code 422. Otherwise, in the case of a successful request, the server should return the response code 201 and the product information in JSON format.
- Returns response in JSON format only

**GET** request to **/products**:
- Returns response in JSON if JSON format is requested: requested header contains **"Accept":"application/json"** 
- Returns response in XML if XML format is requested: requested header contains **"Accept":"application/xml"**
- **Products should be ordered by id**.
- The HTTP response code should be 200.

**GET** request to **/product/:id**
- Returns response in JSON if JSON format is requested: requested header contains **"Accept":"application/json"** 
- Returns response in XML if XML format is requested: requested header contains **"Accept":"application/XML"** 
- If the product with the given id does not exist, then the response code should be 404. Otherwise, the response code should be 200.

## Software Instructions
- Ruby version: 2.7.1
- Rails version: 6.0.2
- Default port: 8000

## Execution
### Requirements
- docker-compose

### Running the server
```
docker-compose build
docker-compose run web rake db:create
docker-compose up
```
This project was created using this instructions: [Docker Docs: Quickstart, composer and rails](https://docs.docker.com/samples/rails/)

