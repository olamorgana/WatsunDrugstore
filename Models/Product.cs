namespace WatsunDrugstore.Models
{
    public class Product
    {
        public int ProductId { get; set; }
        public string Name { get; set; } = string.Empty;
        public string Description { get; set; } = string.Empty;
        public string Category { get; set; } = string.Empty; // "Skincare", "Cosmetics & Beauty", "Personal Care", "Health & Wellness"
        public decimal Price { get; set; }
        public int Stock { get; set; }
        public string ImageFileName { get; set; } = string.Empty; // e.g., "the_ordinary_serum.jpg"
    }
}