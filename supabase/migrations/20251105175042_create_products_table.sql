-- Migration: create_products_table
-- Created by: aleticia999@gmail.com
-- Version: 20251105175042

CREATE TABLE public.produtos (
  id serial primary key,
  nome text,
  preco numeric
);
