import os
import shutil

def separate_files_by_extension(directory):
    # Đường dẫn tới các thư mục đích
    png_folder = os.path.join(directory, 'png')
    svg_folder = os.path.join(directory, 'svg')

    # Tạo các thư mục nếu chúng chưa tồn tại
    os.makedirs(png_folder, exist_ok=True)
    os.makedirs(svg_folder, exist_ok=True)

    for filename in os.listdir(directory):
        if os.path.isfile(os.path.join(directory, filename)):
            file_extension = os.path.splitext(filename)[1].lower()
            if file_extension == '.png':
                shutil.move(os.path.join(directory, filename), os.path.join(png_folder, filename))
                print(f"Moved '{filename}' to '{png_folder}'")
            elif file_extension == '.svg':
                shutil.move(os.path.join(directory, filename), os.path.join(svg_folder, filename))
                print(f"Moved '{filename}' to '{svg_folder}'")

# Sử dụng hàm
directory_path = 'assets/icons/linear'  # Thay thế bằng đường dẫn đến thư mục của bạn
separate_files_by_extension(directory_path)
