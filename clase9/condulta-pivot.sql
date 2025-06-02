# consulta a través de una tabla pivote

SELECT producto, precio, razonsocial
FROM productos
JOIN productos_proveedores
  ON productos.idProducto = productos_proveedores.idProducto
JOIN proveedores
  ON productos_proveedores.idProveedor = proveedores.idProveedor;