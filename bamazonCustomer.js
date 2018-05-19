var inquirer = require('inquirer');
var mysql = require("mysql");

var connection = mysql.createConnection({
  host     : '127.0.0.1',
  user     : 'root',
  password : '',
  database: 'bamazon'
});

connection.connect(function(err) {
    if (err) throw err;
    runStore();
  });
  

  function runStore() {
    connection.query('SELECT `item_id`, `product_name`, `price` FROM `products`', function (error, results, fields) {
        console.log('This is Bamazon! Shop Now!!');
        for (var i = 0; i < results.length; i++) {
            console.log('ID: ' + results[i].item_id + ',  ' + results[i].product_name + 
            ',  price: $' + results[i].price);
        };
        
        placeOrder()

    })
    
  }    
          
    var placeOrder = function() {
        inquirer.prompt([{
            type: "input",
            name: "item_id",
            message: "What's the id of the item you would like to purchase today?"
          },
          {
            type: "input",
            name: "quantity",
            message: 'How many units would you like to purchase?'
       }]) 
      .then(function(input) {
        connection.query("SELECT * FROM products WHERE item_id=" + 
        input.item_id, function (error, results, fields) {

            var item = input.item_id;
            var product = input.product_name;
            var price = results[0].price;
            var quantity = results[0].quantity;
            var stock = results[0].stock_quantity

        // if (error) throw error;
                

        if (stock_quantity < quantity) {
                    console.log('Sorry, there is not that many in stock');
                
        } else {
           console.log('You can now complete your order'); 
           
           var updateQueryStr = 'UPDATE products SET stock_quantity = ' + (product.stock - quantity) + ' WHERE item_id = ' + item;
           
 
           
           connection.query(updateQueryStr, function(err, data) {
             if (err) throw err;
 
             console.log('Your order is ready for checkout! Your total is $' + product.price * quantity);
             console.log('Thank you for shopping with Bamazon! We hope to see you again!');
           
               
             connection.end();
           })
        
        }
      })
    })         
}          