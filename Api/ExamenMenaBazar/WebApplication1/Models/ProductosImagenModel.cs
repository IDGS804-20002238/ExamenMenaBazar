namespace ExamenMenaBazar.Models
{
    public class ProductosImagenModel
    {
        public int producto_id { get; set; }
        public string titulo { get; set; }
        public string descripcion_producto { get; set; }
        public double precio { get; set; }
        public double descuento { get; set; }
        public double calificacion { get; set; }
        public int Stock { get; set; }
        public string Brand { get; set; }
        public string categoria { get; set; }
        public string Thumbnail { get; set; }
        public List<string> Images { get; set; }
    }

}
