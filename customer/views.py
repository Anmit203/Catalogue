from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth.models import User
from myadmin.models import *
from django.contrib import auth
from django.contrib import messages
from django.core.files.storage import FileSystemStorage
import os
from django.conf import settings
from datetime import datetime, date
import razorpay
from django.views.decorators.csrf import csrf_exempt


def get_area(request):
    city_id = request.GET['city_id']
    result = Area.objects.filter(city_id=city_id)
    context = {'result':result}
    return render(request, 'customer/area.html',context)

def get_seller(request):
    area_id = request.GET['area_id']
    result = Seller.objects.filter(area_id=area_id)
    context = {'result':result}
    return render(request, 'customer/get_seller.html',context)

def home(request):
    print(request.user.id)
    result = Category.objects.all()
    context = {'cat':result}
    return render(request, 'customer/home.html',context)

# account views

def login(request):
    context = {}
    return render(request, 'customer/login.html',context)

def check_login(request):
  username  = request.POST['username']
  password  = request.POST['password']

  result = auth.authenticate(username=username, password=password)
  if result is None:
    print('Invalid UserName or Password')
    return redirect('/customer/login')

  else: 
    if Customer.objects.filter(user_id=result.id).exists():
        auth.login(request, result)
        return redirect('/customer/home')

    elif Seller.objects.filter(user_id=result.id).exists():
        messages.error(request, 'Invalid User..Try Again')
        return redirect('/customer/login')

    else:
        messages.error(request, 'Invalid User..Try Again')
        return redirect('/customer/login')

def register(request):
    cities = City.objects.all()
    states = State.objects.all()
    areas = Area.objects.all()
    context = {'cities':cities, 'states':states,'areas':areas}
    return render(request, 'customer/register.html',context)

def store_user(request):
    fname = request.POST['fname']
    lname = request.POST['lname']
    username = request.POST['username']
    password = request.POST['password']
    cpassword = request.POST['cpassword']
    email = request.POST['email']

    contact = request.POST['contact']
    address = request.POST['address']
    gender = request.POST['gender']
    state = request.POST['state']
    area = request.POST['area']
    city = request.POST['city']

    if password == cpassword:
        user = User.objects.create_user(first_name=fname,last_name=lname,email=email,username=username,password=password)

        Customer.objects.create(contact=contact,address=address,user_id=user.id,city_id=city,area_id=area,state_id=state,gender=gender)
        return redirect('/customer/login')

    else:
        print('Password and confirm password mismatched')

def edit_profile(request):
    id = request.user.id
    result = Customer.objects.get(user_id=id)
    cities = City.objects.all()
    states = State.objects.all()
    areas = Area.objects.all()
    context = {'cities':cities, 'states':states,'areas':areas, 'result':result}
    return render(request, 'customer/edit_profile.html',context)

def update_profile(request):
    id = request.user.id
    fname = request.POST['fname']
    lname = request.POST['lname']
    username = request.POST['username']
    email = request.POST['email']

    contact = request.POST['contact']
    address = request.POST['address']
    gender = request.POST['gender']
    state = request.POST['state']
    area = request.POST['area']
    city = request.POST['city']

    data = {
        'first_name' : fname,
        'last_name' : lname,
        'email' : email,
        'username' : username
    }
    user = User.objects.update_or_create(pk=id,defaults=data)

    data2 = {
        'contact' : contact,
        'address' : address,
        'gender' : gender,
        'state_id' : state,
        'area_id' : area,
        'city_id' : city,
    }
    Customer.objects.update_or_create(user_id=id,defaults=data2)
    return redirect('/customer/home')

def change_password(request):
    id = request.user.id
    result = User.objects.get(pk=id)
    context = {'result' : result}
    return render(request, 'customer/change_password.html', context)

def spasse(request):
    username = request.user.username

    old_pass = request.POST['old_pass']
    new_pass = request.POST['new_pass']
    rnew_pass = request.POST['rnew_pass']

    if new_pass == rnew_pass:
        user = auth.authenticate(username=username,password=old_pass)
        if user is not None:
            user.set_password(new_pass)
            user.save()
            return redirect('/customer/login')
        else:
            messages.warning(request, 'Invalid password')
            print('Invalid Password')
        return redirect('/customer/change_password')

    else:
        messages.warning(request, 'Password and Confirm Password mismatched')    
        print('Password and Confirm Password mismatched')
        return redirect('/customer/change_password')

def logout(request):
    auth.logout(request)
    return redirect('/customer/login')


# common views

def about(request):
    context = {}
    return render(request, 'customer/about.html',context)

def contact(request):
    context = {}
    return render(request, 'customer/contact.html',context)

def contact_us(request):
    id = request.user.id
    subject = request.POST['subject']
    message = request.POST['message']
    name = request.POST['name']
    email = request.POST['email']
    contact = request.POST['contact']


    Inquiry.objects.create(subject=subject,message=message,name=name,email=email,contact=contact)
    return redirect('/customer/home')


def cart(request):
    cus = Customer.objects.get(user_id=request.user.id)
    result = Cart.objects.filter(customer_id=cus.id)

    total_amount = 0
    for row in result:
        total_amount = (row.product.price* row.quantity) + total_amount 

    context = {'result':result,'total_amount':total_amount}
    return render(request, 'customer/cart.html',context)

def add_cart(request, id):
    customer = Customer.objects.get(user_id=request.user.id)
    cart_data = Cart.objects.filter(product_id=id, customer_id=customer.id)

    if cart_data.exists():
        data = {
                 'quantity': cart_data[0].quantity + 1 
              }
        Cart.objects.update_or_create(pk=cart_data[0].id, defaults=data)

    else:
        quantity = request.POST['quantity']
        Cart.objects.create(product_id=id,customer_id=customer.id,quantity=quantity)

   
    return redirect(request.META.get('HTTP_REFERER'))



def update_cart(request):
    cart_id = request.GET['cart_id']
    quantity = request.GET['quantity']

    data = {
             'quantity': quantity 
          }
    Cart.objects.update_or_create(pk=cart_id, defaults=data)
    return redirect('/customer/cart')

def place_order(request):
    cus = Customer.objects.get(user_id=request.user.id)
    cart = Cart.objects.filter(customer_id=cus.id)

    fname = request.POST['fname']
    lname = request.POST['lname']
    phone = request.POST['phone']
    area = request.POST['area']
    city = request.POST['city']
    ddate = request.POST['ddate']
    time = request.POST['time']
    showroom = request.POST['showroom']

    total_amount = 0
    # for row5 in cart:
    #     sell_id = row5.product.seller_id
    # print(sell_id)
    t = Order.objects.filter(ddate=ddate,time=time,seller_id=showroom).count()
    if t >= 10:
        messages.warning(request,'Selected date and time slot is not available')
        messages.warning(request,'To proceed further please change the time or date slot')
        return redirect(request.META.get('HTTP_REFERER'))
        
    else:
        for row in cart:
            total_amount = (row.product.price* row.quantity) + total_amount 
            order_info = Order.objects.create(amount=total_amount,orderdate=date.today(),ddate=ddate,time=time,status='pending',customer_id=cus.id,seller_id=showroom,fname=fname,lname=lname,phone=phone,area_id=area,city_id=city)

        for row in cart:
            tprice = row.product.price*row.quantity
            Order_details.objects.create(quantity=row.quantity,price=tprice,order_id=order_info.id,product_id=row.product.id,seller_id=showroom)
        cart_clear = Cart.objects.filter(customer_id=cus.id)
        
        # cart_clear.delete()
        return redirect('/customer/success_payment')

def make_payment(request):
    pd_id = request.session['pd_id']  
    key_id = 'rzp_test_qu1r85W33FbFlf'
    key_secret = 'mNX26pRh92aG5BqjlM9LIHLQ'

    cus = Customer.objects.get(user_id=request.user.id)
    cart = Cart.objects.filter(customer_id=cus.id)
    total_amount = 0
    for row in cart:
        total_amount = (row.product.price* row.quantity) + total_amount 

    amount = total_amount
    client = razorpay.Client(auth=(key_id, key_secret))

    data = {
        'amount': int(amount)*100,
        'currency': 'INR',
        "receipt":"BookHive",
        "notes":{
            'name' : 'request.user.first_name',
            'payment_for':'Payment Test'
        }
    }

    data_pd = {'payment_id':'razorpay','signature':'razorpay'}
    phone = Customer.objects.get(user_id=request.user.id).contact
    payment = client.order.create(data=data)
    Payment_Details.objects.update_or_create(pk=pd_id,defaults=data_pd)
    context = {'payment' : payment,'total_amount':total_amount,'phone':phone,}
    return render(request, 'customer/process_payment.html',context)



@csrf_exempt
def r_details(request):
    pd_id = request.session['pd_id']

    order_id = request.POST.get('razorpay_order_id')
    payment_id = request.POST.get('razorpay_payment_id')
    signature = request.POST.get('razorpay_signature')
    client = razorpay.Client(auth=("rzp_test_qu1r85W33FbFlf", "mNX26pRh92aG5BqjlM9LIHLQ"))
    # print(client.utility.verify_payment_signature)
    
    try:
        client.utility.verify_payment_signature({
            'razorpay_order_id': order_id,
            'razorpay_payment_id': payment_id,
            'razorpay_signature': signature
        })
        print("Success")
        data_pd = {'payment_id':payment_id,'signature':signature}
        Payment_Details.objects.update_or_create(pk=pd_id,defaults=data_pd)
        # Maintenance_Payment.objects.create(order_id=order_id,payment_id=payment_id,signature=signature,date_time=datetime.today(),member_id=result,maintenance_id=id)
        # Payment is successful, do something here
        return redirect('/customer/success_payment')

    except:
        print("Failure") 
        # Payment failed, do something here



def remove_item(request,id):
    result = Cart.objects.get(pk=id)
    print(result.product.pname)
    result.delete()
    return redirect(request.META.get('HTTP_REFERER'))

@csrf_exempt
def success_payment(request):
    context = {}
    return render(request, 'customer/success_payment.html',context)


def checkout(request):
    cus = Customer.objects.get(user_id=request.user.id)
    result = Cart.objects.filter(customer_id=cus.id)
    state = State.objects.all()
    city = City.objects.all()
    area = Area.objects.all()
    seller = Seller.objects.all()
    sub_total = 0
    for row in result:
        sub_total = (row.product.price* row.quantity) + sub_total 
        print(sub_total)
    context = {'result':result,'sub_total':sub_total,'state':state,'area':area,'city':city,'cus':cus,'seller':seller}
    return render(request, 'customer/checkout.html',context)

def product_details(request):
    context = {}
    return render(request, 'customer/product_details.html',context)

def product_list(request):
    context = {}
    return render(request, 'customer/product_list.html',context)

def seller(request):
    cities = City.objects.all()
    states = State.objects.all()
    areas = Area.objects.all()
    context = {'cities':cities, 'states':states,'areas':areas}
    return render(request, 'customer/seller.html',context)

def store_seller(request):
    fname = request.POST['fname']
    lname = request.POST['lname']
    username = request.POST['username']
    password = request.POST['password']
    cpassword = request.POST['cpassword']
    email = request.POST['email']

    contact = request.POST['contact']
    address = request.POST['address']
    about = request.POST['about']

    image = request.FILES['photo']
    myloc = os.path.join(settings.MEDIA_ROOT, 'seller')
    obj = FileSystemStorage(location=myloc)
    obj.save(image.name, image)

    state = request.POST['state']
    area = request.POST['area']
    city = request.POST['city']
    showroom = request.POST['showroom']

    if password == cpassword:
        user = User.objects.create_user(first_name=fname,last_name=lname,email=email,username=username,password=password)

        Seller.objects.create(contact=contact,address=address,user_id=user.id,photo=image.name,city_id=city,area_id=area,state_id=state,showroom_name=showroom,about=about)
        return redirect('/seller')

    else:
        print('Password and confirm password mismatched')


def all_books(request):
    result = Product.objects.all()
    context = {'result':result}

    return render(request, 'customer/all_books.html', context)

def book_details(request, id):
    result = Product.objects.get(pk=id)
    r2 = Product.objects.order_by('id').reverse()[:5]
    print(r2)
    context = {'result':result,'r2':r2}

    return render(request, 'customer/book_details.html', context)

def books(request,id):
    result = Product.objects.filter(category_id=id)
    cname = Category.objects.get(pk=id)
    sname = Subcategory.objects.all()
    cnameall = Category.objects.all()
    context = {'result':result,'cname':cname,'snameall':sname,'cnameall':cnameall}

    return render(request, 'customer/books.html', context) 

def sbooks(request,id):
    result = Product.objects.filter(subcategory_id=id)
    cname = Subcategory.objects.get(pk=id)
    cnameall = Category.objects.all()
    snameall = Subcategory.objects.all()
    context = {'result':result,'sname':cname,'cnameall':cnameall,'snameall':snameall}

    return render(request, 'customer/books.html', context) 


def feedback(request):
    context = {}
    return render(request,'customer/feedback.html', context)

def feedback_store(request):
    rating = request.POST['rating']
    comment = request.POST['comment']
    
    Feedback.objects.create(rating=rating,comment=comment,user_id=request.user.id,date=date.today())
    return redirect('/customer/home')

def orders(request):
    c_id = Customer.objects.get(user_id=request.user.id)
    result = Order.objects.filter(customer_id=c_id.id)
    context = {'result':result}

    return render(request,'customer/orders.html', context)

def cancel_order(request,id):
    data = {
            'status':'cancelled'
        }

    Order.objects.update_or_create(pk=id,defaults=data)
    return redirect('/customer/orders')