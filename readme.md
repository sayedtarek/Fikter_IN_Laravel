<p align="center"><img src="https://laravel.com/assets/img/components/logo-laravel.svg"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## About this  Laravel project

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel attempts to take the pain out of development by easing common tasks used in the majority of web projects, such as:

 I will show you how you can filter your data based on the type and categories
---

## How to run this project

First : Download this project 
Second: Run in you terminal composer install
Third : Open your phpMyadmin and import the file (test.sql) with project file and change Your user name and pass
Forth : Run in your terminal PHP artisan migrate.
Fifth : Run php arisan serv

# How to make this project with your own
 Step 1: Install Laravel.

 ## Step 2: Create migration and dummy data. (php artisan make:model Test -m) 
         (create migration like in my migration file file)
          then php artisan migrate
          
### next step is to generate the fake data using the factory. So create a factory using the following command.
          (php artisan make:factory TestFactory --model=Test)
          This command It will create a file inside database  >>  factories folder called TestFactory.php.
          Make your file like my project file.
        
### next step is to generate the random data.
          open he terminal then "php artisan tinker"  
           
           then  "factory(\App\Test::class, 20)->create();"


## Step 3: Create an endpoint. 
Next step is to create a ProductController file. So type the following command. (php artisan make:controller TestController).
Change your Controller to my controller file 

### Define the route inside the web.php file.

Route::get('/tests', 'TestsController@index')->name('products');

## Step 4: Create a filter. ( Make your fie like my files) 

 Now, create a Filters folder inside app directory.

In that folder, create one file called TypeFilter.php.

### inside TestController.php file, we can write the following code.
#### public function index(Request $request)
    {
        return Product::filter($request)->get();
    }
### Inside Filters folder, create one abstract class called AbstractFilter.php.
### Next step is to create a new file called TestFilter.php inside Filters directory.




## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
