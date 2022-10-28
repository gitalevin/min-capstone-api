import axios from "axios";
import { useState, useEffect } from "react";
import { ProductsIndex } from "./ProductsIndex";
import { ProductsShow } from "./ProductsShow";
import { Modal } from "./Modal";

export function Home() {
  const [Products, setProducts] = useState([]);
  const [isProductsShowVisible, setIsProductsShowVisible] = useState(false);
  const [currentProduct, setCurrentProduct] = useState({});

  const handleIndexProducts = () => {
    console.log("Going to get all products...");
    axios.get("http://localhost:3000/products.json").then((response) => {
      console.log(response);
      setProducts(response.data);
    });
  };

  const handleShowProduct = (product) => {
    setIsProductsShowVisible(true);
    setCurrentProduct(product);
  };

  const handleHideProduct = () => {
    setIsProductsShowVisible(false);
  };

  const handleUpdateProduct = (id, params) => {
    axios.patch(`http://localhost:3000/products/${id}.json`, params).then((response) => {
      console.log("Updated product", response);
      setIsProductsShowVisible(false);
      setProducts(
        products.map((product) => {
          if (product.id === id) {
            return response.data;
          } else {
            return product;
          }
        })
      );
    });
  };

  const handleDestroyProduct = (product) => {
    console.log("You wanna destroy this product: ", product);
    axios.delete(`http://localhost:3000/products/${product.id}.json`).then((response) => {
      console.log("Product was destroyed!");
      setIsProductsShowVisible(false);
      setProducts(products.filter((r) => r.id !== product.id));
    });
  };

  useEffect(handleIndexProducts, []);

  return (
    <div className="container">
      <ProductsIndex products={products} onSelectProduct={handleShowProduct} />
      <Modal show={isProductsShowVisible} onClose={handleHideProduct}>
        <ProductsShow
          Product={currentProduct}
          onUpdateProduct={handleUpdateProduct}
          onDestroyProduct={handleDestroyProduct}
        />
      </Modal>
    </div>
  );
}
