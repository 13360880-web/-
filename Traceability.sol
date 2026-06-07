// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Traceability {

    struct Product {
        string name;
        string origin;
        string date;
        bool exists;
    }

    mapping(string => Product) public products;

    // 新增資料
    function addProduct(
        string memory _id,
        string memory _name,
        string memory _origin,
        string memory _date
    ) public {
        products[_id] = Product(_name, _origin, _date, true);
    }

    // 查詢資料
    function getProduct(string memory _id)
        public
        view
        returns (string memory, string memory, string memory)
    {
        require(products[_id].exists, "Product not found");

        Product memory p = products[_id];
        return (p.name, p.origin, p.date);
    }
}