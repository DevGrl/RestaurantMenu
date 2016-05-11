--use Restaurant

--select * from menu

--SELECT 
--	mtime.Description MenuType,
--	mtype.Description MenuSection,
--	m.Name,
--	m.Price,
--	m.Description,
--	m.Active
--FROM 
--	MenuTime mtime
--		JOIN menu m
--			on mtime.menutimeid = m.menutimeid 
--		JOIN
--			mealtype mtype
--			on m.mealtypeid = mtype.mealtypeid
--WHERE m.menutimeid = 1	


CREATE PROCEDURE procXMLMenu
AS BEGIN
    SELECT
        m.MenuItemID AS '@ID',
        mtime.Description MenuType,
		mtype.Description MenuSection,
		m.Name,
		m.Price,
		m.Description,
		m.Active
	FROM 
		MenuTime mtime
			JOIN menu m
				on mtime.menutimeid = m.menutimeid 
			JOIN
				mealtype mtype
				on m.mealtypeid = mtype.mealtypeid
	WHERE m.menutimeid = 1	
	AND m.Active = 1
    FOR XML PATH('MenuItem'), ROOT('Menu')
END

