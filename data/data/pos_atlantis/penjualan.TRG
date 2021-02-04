TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER jual AFTER INSERT ON penjualan\nFOR EACH ROW BEGIN\nupdate stok set\nbarcode=new.barcode,\nnama_brg=new.nama_brg,\njumlah=jumlah-new.jumlah,\nsatuan=new.satuan where kode_brg=new.kode_brg;\nEND'
sql_modes=1344274432
definers='root@localhost'
client_cs_names='utf8'
connection_cl_names='utf8_general_ci'
db_cl_names='latin1_swedish_ci'
