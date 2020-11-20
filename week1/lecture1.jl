### A Pluto.jl notebook ###
# v0.12.10

using Markdown
using InteractiveUtils

# ╔═╡ f7637354-2aa7-11eb-12d6-c11516eca78b
begin
	using Images
	philip = load("philip.jpg")
end

# ╔═╡ b5d696fa-2aa7-11eb-39ab-cdecffa866ba
url = "https://i.imgur.com/VGPeJ6s.jpg"

# ╔═╡ ecded2d4-2aa7-11eb-0754-f99bb18d3a81
download(url, "philip.jpg")

# ╔═╡ ce58f136-2aa8-11eb-3023-e5eca91fa4da
begin
	(h, w) = size(philip)
	head = philip[(h ÷ 2):h, (w ÷ 10):(9w ÷ 10)]
end

# ╔═╡ 3c39b564-2aa9-11eb-10a5-f16a3356d99b
head

# ╔═╡ 51f03d56-2aa9-11eb-0be6-f139e7839284
[
	head reverse(head, dims=2)
	reverse(head, dims=1) reverse(reverse(head, dims=1), dims=2)
]

# ╔═╡ 5bc99070-2aa9-11eb-051c-1f54b361cd46
new_phil = copy(philip)

# ╔═╡ ac80c394-2aa9-11eb-0003-65caf5a6ba15
red = RGB(1, 0, 0)

# ╔═╡ b73b3b16-2aa9-11eb-1118-35f4b79eb3b3
for i in 1:100
	for j in 1:300
		new_phil[i, j] = red
	end
end

# ╔═╡ d6bd88a4-2aa9-11eb-1009-cb82a3b4856f
new_phil

# ╔═╡ da49cfd2-2aa9-11eb-2b69-bb102cf3f718
begin
	new_phil2 = copy(new_phil)
	new_phil2[100:200, 1:100] .=  RGB(0, 1, 0)
	new_phil2
end

# ╔═╡ 15cb0a44-2aaa-11eb-0512-4b8fc99949ca
function redify(color)
	return RGB(color.r, 0, 0)
end

# ╔═╡ 3007c0aa-2aaa-11eb-1aa2-3d38a0360fa2
begin
	color = RGB(0.5, 0.5, 0.2)
	[color, redify(color)]
end

# ╔═╡ 57301754-2aaa-11eb-22f5-91a2e3031bea
redify.(head)

# ╔═╡ 83f7ac7a-2aaa-11eb-0c55-6be1f6b21921
edge_detect(head)

# ╔═╡ 21844fe2-2aac-11eb-24b4-b7176e263ccb


# ╔═╡ Cell order:
# ╠═b5d696fa-2aa7-11eb-39ab-cdecffa866ba
# ╠═ecded2d4-2aa7-11eb-0754-f99bb18d3a81
# ╠═f7637354-2aa7-11eb-12d6-c11516eca78b
# ╠═ce58f136-2aa8-11eb-3023-e5eca91fa4da
# ╠═3c39b564-2aa9-11eb-10a5-f16a3356d99b
# ╠═51f03d56-2aa9-11eb-0be6-f139e7839284
# ╠═5bc99070-2aa9-11eb-051c-1f54b361cd46
# ╠═ac80c394-2aa9-11eb-0003-65caf5a6ba15
# ╠═b73b3b16-2aa9-11eb-1118-35f4b79eb3b3
# ╠═d6bd88a4-2aa9-11eb-1009-cb82a3b4856f
# ╠═da49cfd2-2aa9-11eb-2b69-bb102cf3f718
# ╠═15cb0a44-2aaa-11eb-0512-4b8fc99949ca
# ╠═3007c0aa-2aaa-11eb-1aa2-3d38a0360fa2
# ╠═57301754-2aaa-11eb-22f5-91a2e3031bea
# ╠═83f7ac7a-2aaa-11eb-0c55-6be1f6b21921
# ╠═21844fe2-2aac-11eb-24b4-b7176e263ccb
