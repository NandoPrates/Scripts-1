LuaQ     @eXtract.lua           %      A@  @ $     $@  À  $    $À  @ $   $@ À $   $À @ $     @C A À À À  D @ @  @ À D @         dofile    itemInfo.lub    d_t_s_quotes    main    sortOutput    addUnidentified    addIdentified    addSlotClass    AddItemUnidentifiedDesc    AddItemIdentifiedDesc    AddFunction    file    io    open    ConverteditemInfo.lua    w    write    
-- >= 2017 clients require costume field.
-- Change it according to your need, default: 2017
-- Extracted using eXtractItemInfo/Dastgir
client_year = 2017

    close 	               
    @ @ A@  ^  K@ ÁÀ   ]  ^                gsub    "    \"     
                                       s     	           
        
%      À   AÀ FÀ @ À  Æ Á  À ÅA    @ ÜA¡  @þ À   ÁÁ FÂ @ À  Æ@Â  À Å    @ ÜA¡  @þÀ À   Ã FAÃ Ã @        addUnidentified    unidentifiedDisplayName    unidentifiedResourceName    pairs    unidentifiedDescriptionName    AddItemUnidentifiedDesc    addIdentified    identifiedDisplayName    identifiedResourceName    identifiedDescriptionName    AddItemIdentifiedDesc    addSlotClass 
   slotCount 	   ClassNum    costume     %                                                                                                                        ItemID     $      DESC     $      (for generator)          (for state)          (for control)          k 	         v 	         (for generator)          (for state)          (for control)          k          v                              @@   @À  A  À    A Á WA Á @A Á A@ý  @   	      file    write 	   tbl = {
       ð?    àÿï@   tbl     main    AddFunction                                                                             (for index)          (for limit)          (for step)          i                   )        Å   Ë@ÀA    ÁÁ    A  ÁB UÁÜ@        file    write    	[ $   ] = {
		unidentifiedDisplayName = " "   ",
		unidentifiedResourceName = " &   ",
		unidentifiedDescriptionName = {
        !   !   !   !   #   #   %   %   (   (   !   )         a           b           c                *   3     

   Å   Ë@ÀA   ÁÁ    A UAÜ@        file    write !   		},
		identifiedDisplayName = "     ",
		identifiedResourceName = " $   ",
		identifiedDescriptionName = {
     
   +   +   -   -   /   /   2   2   +   3         a     	      b     	      c     	           4   =          A@  À Â  @  ÅB  Ü  A        file    write    		},
		slotCount =     ,
		ClassNum =     ,
		costume =  	   tostring    
	},
        5   5   7   7   8   8   9   9   9   9   <   <   5   =         a           b           c           d                ?   A     
      @@  EÁ   \  @        file    write    			"    d_t_s_quotes    ",
     
   @   @   @   @   @   @   @   @   @   A         a     	      b     	           C   E     
      @@  EÁ   \  @        file    write    			"    d_t_s_quotes    ",
     
   D   D   D   D   D   D   D   D   D   E         a     	      b     	           G   h            @@   @  AÀ           file    write    }

-- Extracted using eXtractItemInfo/Dastgir
function main()
	for ItemID, DESC in pairs(tbl) do
		if (client_year == 2017) then
			result, msg = AddItem(ItemID, DESC.unidentifiedDisplayName, DESC.unidentifiedResourceName, DESC.identifiedDisplayName, DESC.identifiedResourceName, DESC.slotCount, DESC.ClassNum, DESC.costume)
		else
			result, msg = AddItem(ItemID, DESC.unidentifiedDisplayName, DESC.unidentifiedResourceName, DESC.identifiedDisplayName, DESC.identifiedResourceName, DESC.slotCount, DESC.ClassNum)
		end
		if not result then
			return false, msg
		end
		for k, v in pairs(DESC.unidentifiedDescriptionName) do
			result, msg = AddItemUnidentifiedDesc(ItemID, v)
			if not result then
				return false, msg
			end
		end
		for k, v in pairs(DESC.identifiedDescriptionName) do
			result, msg = AddItemIdentifiedDesc(ItemID, v)
			if not result then
				return false, msg
			end
		end
	end
	return true, "good"
end

       ð?       H   H   f   H   g   g   g   h           %                     
         )       3   *   =   4   A   ?   E   C   h   G   j   j   j   j   j   j   l   l   s   l   u   u   v   v   v   v           