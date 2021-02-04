TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER beli AFTER INSERT ON pembelian\nFOR EACH ROW BEGIN\ninsert into stok set\nkode_brg=new.kode_brg,\nbarcode=new.barcode,\nnama_brg=new.nama_brg,\njumlah=new.jumlah,\nsatuan=new.satuan\non duplicate key update jumlah=jumlah+new.jumlah;\nEND'
sql_modes=1344274432
definers='root@localhost'
client_cs_names='utf8'
connection_cl_names='utf8_general_ci'
db_cl_names='latin1_swedish_ci'
