url = "irealb://[url=irealb://26-2%3DColtrane%20John%3D%3DMedium%20Up%20Swing%3DF%3D%3D1r34LbKcu7ZL7bD4F%5E7%20ZL7F%207-CZL7C%207A%5EZL7E%207%5EbDZL7bABb%5E7%204T%5BA*%207%5EAZA7LZD%5EbDZL7bA%207%5EF%5BA%5D*%207C%207-GZL7G%207-7%20E7L%207%5EbGC%5BB*%5D-7%20F7FZL7C%207%5EAZL7E%20%5E7bDZL7bA%207%5EbBZL%5E7XyQCZL7C7%5EbD%7CLZE-7A%7CQyX7-bE%7CQyX7b%5EBZL7F%207%5EDZL7A%20b7XyQ7F%207-BZL7F-7%20C7L7C%207%5EAZL7E%207%5EDbZL7bA%207%5EF%5BA*%5D%20ZC-7%20G%7CQyXb%5E7%20Ab7LZDb%5E7%20E7LZA%5E7%20C7LZF%5E7%20%20%20Z%3D%3D0%3D0%3D%3D%3D"
url.sub!("irealb://[url=irealb://", "")
url.sub!("%3D", ", ")
url.sub!("%20", ", ")
url.sub!("%3D%3D", ", ")
url.sub!("%20", ", ")
url.sub!("%20", ", ")
url.sub!("%3D", ", ")
array = url.split(", ")
p array
p "Title: #{array[0]}"
p "Composer: #{array[2]} #{array[1]}"