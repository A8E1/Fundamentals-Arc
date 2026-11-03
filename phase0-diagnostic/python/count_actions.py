def count_actions(log_file):
    login_count = 0
    upload_count = 0
    search_count = 0
    logout_count = 0
    for line in log_file:
        if "LOGIN" in line:
            login_count += 1
        elif "UPLOAD" in line:
            upload_count += 1
        elif "SEARCH" in line:
            search_count += 1
        elif "LOGOUT" in line:
            logout_count += 1
    return login_count, upload_count, search_count, logout_count