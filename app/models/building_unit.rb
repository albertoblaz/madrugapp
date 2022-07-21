class BuildingUnit < ApplicationRecord
  belongs_to :project
  belongs_to :parent, class_name: 'BuildingUnit', optional: true, foreign_key: :building_unit_id
  has_many :children, class_name: 'BuildingUnit', dependent: :destroy

  def all_children
    children.flat_map do |child_cat|
      child_cat.all_children << child_cat
    end
  end

=begin
  def all_children
    BuildingUnit.find_by_sql(recursive_tree_children_sql)
  end

  private

  def recursive_tree_children_sql
    columns = self.class.column_names
    columns_joined = columns.join(',')
    sql =
      <<-SQL
        WITH RECURSIVE category_tree (#{columns_joined}, level)
        AS (
          SELECT
            #{columns_joined},
            0
          FROM categories
          WHERE id = #{id}

          UNION ALL
          SELECT
            #{columns.map { |col| 'cat.' + col }.join(',')},
            ct.level + 1
          FROM categories cat, category_tree ct
          WHERE cat.category_id = ct.id
        )
        SELECT * FROM category_tree
        WHERE level > 0
        ORDER BY level, category_id, name;
      SQL
    sql.chomp
  end
=end
end
