require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Buyer", with: @product.buyer
    fill_in "Category", with: @product.category_id
    fill_in "Content", with: @product.content
    fill_in "Data File", with: @product.data_file
    fill_in "Language", with: @product.language
    fill_in "Manufacturer", with: @product.manufacturer
    fill_in "Name", with: @product.name
    fill_in "Price", with: @product.price
    fill_in "Published", with: @product.published
    fill_in "Slug", with: @product.slug
    fill_in "Tags", with: @product.tags
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Buyer", with: @product.buyer
    fill_in "Category", with: @product.category_id
    fill_in "Content", with: @product.content
    fill_in "Data File", with: @product.data_file
    fill_in "Language", with: @product.language
    fill_in "Manufacturer", with: @product.manufacturer
    fill_in "Name", with: @product.name
    fill_in "Price", with: @product.price
    fill_in "Published", with: @product.published
    fill_in "Slug", with: @product.slug
    fill_in "Tags", with: @product.tags
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
