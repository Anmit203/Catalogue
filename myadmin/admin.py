from django.contrib import admin
from .models import Category,Area,State,Order,Order_details,Cart
# Register your models here.
@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    list_display = ['id','cat_name']

@admin.register(Cart)
class CartAdmin(admin.ModelAdmin):
    list_display = [id]



    # ye isliye hai ke tu dekh paye user ka cart or products add kar paye isiliye admin site se