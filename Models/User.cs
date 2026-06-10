namespace WatsunDrugstore.Models
{
    public class User
    {
        public int UserId { get; set; }
        public string Email { get; set; } = string.Empty;
        public string Password { get; set; } = string.Empty; // TODO: Hash this!
        public string Role { get; set; } = "Customer"; // "Customer" or "Admin"
        public string FullName { get; set; } = string.Empty;
    }
}