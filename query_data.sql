
-- mysql 8.0.36

-- real tenant data
select sup.id                                     as tenant_id
     , sup.name                                   as tenant_name
     , s.id                                       as sku_id
     , s.sku
     , s.barcode
     , s.title                                      as sku_name
     , s.is_sold
     , s.is_active
     , s.`order`                                  as sku_order
     , s.category_order
     , replace(u.name, concat('x', u.quantity), '') as unit_name
     , u.quantity
     , c.th_name                                  as category_name
     , sc.th_name                                 as sub_category_name
     , b.name_th                                  as brand_name
     , coalesce(round(avg(sp.price), 2), 0)       as avg_price
from skus s
         join suppliers sup on sup.id = s.supplier_id
         join units u on u.id = s.unit_id
         left join categories c on c.id = s.category_id
         left join sub_categories sc on sc.id = s.sub_category_id
         left join brands b on b.id = s.brand_id
         left join sku_prices sp on sp.sku_id = s.id and sp.price > 0
where s.supplier_id = 'afbe57d8-b037-4195-a796-bb48abf6ec31'
group by s.id, s.id, c.id, b.id, sc.id, u.id

-- real master data
select ms.id            AS id
     , ms.title         AS title
     , ms.image_url     AS image_url
     , nullif(ms.size, 0) AS size
     , mus.name         AS size_name
     , ms.barcode       AS barcode
     , ms.sku           AS sku
     , ms.pack_type     AS pack_type
     , cast(regexp_substr(ms.pack_type, '[0-9]+') as unsigned) AS pack_qty
     , mu.name          as pack_type_name
     , mb.id            AS brand_id
     , mb.name_th       AS brand_th
     , mb.name_en       AS brand_en
     , mb.brand_code    AS brand_code
     , mb.is_thaibev    AS is_thaibev
     , mc.id            AS category_id
     , mc.name_th       AS category_th
     , mc.name_en       AS category_en
     , mc.category_code AS category_code
     , msc.id           AS sub_category_id
     , msc.name_th      AS sub_category_th
     , msc.name_en      AS sub_category_en
from master_data.master_skus ms
         left join master_data.master_brands mb
                   on ms.master_brand_id = mb.id
         left join master_data.master_categories mc
                   on ms.master_category_id = mc.id
         left join master_data.master_sub_categories msc
                   on ms.master_sub_category_id = msc.id
         left join master_data.master_units mu on ms.master_unit_id = mu.id
         left join master_data.master_unit_sizes mus on ms.master_unit_size_id = mus.id;

-- real master data staging
select coalesce(nullif(ms.productId,''),ms.id)            AS id
     , ms.title         AS title
     , ms.image_url     AS image_url
     , nullif(ms.size, 0) AS size
     , mus.name         AS size_name
     , ms.barcode       AS barcode
     , msk.sku           AS sku
     , ms.pack_type     AS pack_type
     , cast(regexp_substr(ms.pack_type, '[0-9]+') as unsigned) AS pack_qty
     , mu.name          as pack_type_name
     , mb.id            AS brand_id
     , mb.name_th       AS brand_th
     , mb.name_en       AS brand_en
     , mb.brand_code    AS brand_code
     , mb.is_thaibev    AS is_thaibev
     , mc.id            AS category_id
     , mc.name_th       AS category_th
     , mc.name_en       AS category_en
     , mc.category_code AS category_code
     , msc.id           AS sub_category_id
     , msc.name_th      AS sub_category_th
     , msc.name_en      AS sub_category_en
from master_data.master_stagings ms
    left join master_data.master_skus msk on msk.id = ms.productId
         left join master_data.master_brands mb
                   on ms.master_brand_id = mb.id
         left join master_data.master_categories mc
                   on ms.master_category_id = mc.id
         left join master_data.master_sub_categories msc
                   on ms.master_sub_category_id = msc.id
         left join master_data.master_units mu on ms.master_unit_id = mu.id
         left join master_data.master_unit_sizes mus on ms.master_unit_size_id = mus.id;