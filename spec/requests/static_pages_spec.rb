require 'spec_helper'

describe "StaticPages" do

	describe "Home page" do

		it "powinien wyświetlić zawartość 'Zgraj Się!'" do
			visit '/static_pages/home'
			expect(page).to have_content('Zgraj Się!')
		end

		it "powinna mieć właściwy tytuł" do
			visit '/static_pages/home'
			expect(page).to have_title("Zgraj Się!")
		end

		it "nie powinna mieć tytułu" do
			visit '/static_pages/home'
			expect(page).not_to have_title('| Home')
		end
	end

	describe "Strona pomocy" do
		it "strona powinna wyświetlić zawartość 'Pomoc" do
			visit '/static_pages/help' 
			expect(page). to have_content('Pomoc')
		end

		it "powinna mieć właściwy tytuł 'Pomoc'" do
			visit '/static_pages/help'
			expect(page).to have_title("Zgraj Się! | Pomoc")
		end
	end

	describe "Strona O nas" do
		it "powinna wyświetlić informacje 'O nas'" do
			visit '/static_pages/about'
			expect(page). to have_content('O nas')
		end

		it "powinna mieć właściwy tytuł 'O nas'" do
			visit '/static_pages/about'
			expect(page).to have_title("Zgraj Się! | O nas")
		end
	end
end