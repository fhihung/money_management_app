import os
import re

def rename_files_in_directory(directory):
    def sanitize_filename(filename):
        # Tách phần mở rộng của tệp
        base, ext = os.path.splitext(filename)
        
        # Di chuyển các số ở đầu tên tệp ra phía sau phần thân của tên tệp
        match = re.match(r"^(\d+)(.*)", base)
        if match:
            numbers = match.group(1)
            name = match.group(2)
            sanitized_name = re.sub(r'[^\w\-_]', '', name) + numbers + ext
        else:
            sanitized_name = re.sub(r'[^\w\-_]', '', base) + ext
        return sanitized_name

    def ensure_unique_name(directory, filename):
        base, ext = os.path.splitext(filename)
        existing_files = [f for f in os.listdir(directory) if os.path.splitext(f)[0] == base]
        # Nếu có tệp trùng tên và cùng phần mở rộng thì giữ nguyên tên
        if any(os.path.splitext(f)[1] == ext for f in existing_files):
            return filename
        return filename

    for filename in os.listdir(directory):
        if os.path.isfile(os.path.join(directory, filename)):
            sanitized_name = sanitize_filename(filename)
            unique_name = ensure_unique_name(directory, sanitized_name)
            old_path = os.path.join(directory, filename)
            new_path = os.path.join(directory, unique_name)
            if old_path != new_path:
                os.rename(old_path, new_path)
                print(f"Renamed '{filename}' to '{unique_name}'")

# Sử dụng hàm
directory_path = 'assets/icons/linear'  # Thay thế bằng đường dẫn đến thư mục của bạn
rename_files_in_directory(directory_path)
