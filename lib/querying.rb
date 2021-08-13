def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books
  WHERE series_id = 1
  ORDER BY year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters
  GROUP BY name
  HAVING MAX(LENGTH(motto));"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.species) AS number FROM characters
  GROUP BY characters.species
  HAVING MAX(number);"
end

def select_name_and_series_subgenres_of_authors
  "SELECT  authors.name, subgenres.name FROM series
  LEFT JOIN subgenres ON series.subgenre_id = subgenres.id
  INNER JOIN authors ON authors.id = series.author_id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series
  GROUP BY series.title
  HAVING MAX(COUNT(characters.name));"
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
end
