using Microsoft.AspNetCore.Mvc;

namespace OnlineShopCoreMVC.Controllers
{
    public class UploadFileController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public IActionResult UploadFile(IFormFile myfile)
        {
            if (myfile != null)
            {
                // chỉ định đường dẫn sẽ lưu
                string fullpath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "UploadImage", myfile.FileName);
                //Copy file vào thư mục đã chỉ định
                using (var file = new FileStream(fullpath, FileMode.Create))
                {
                    myfile.CopyTo(file);

                }
            }
            return View("Index");
        }
        [HttpPost]
        public async Task<IActionResult> Index(List<IFormFile> files)
        {
            var size = files.Sum(f => f.Length);
            var filepaths = new List<string>();
            foreach (var formfile in files)
            {
                if (formfile.Length > 0)
                {
                    var filepath = Path.Combine(Directory.GetCurrentDirectory(), formfile.FileName);
                    filepaths.Add(filepath);
                    using(var stream = new FileStream(filepath, FileMode.Create))
                    {
                        await formfile.CopyToAsync(stream);
                    }
                }
            }
            return Ok(new { files.Count, size, filepaths });
        }
    }
}
