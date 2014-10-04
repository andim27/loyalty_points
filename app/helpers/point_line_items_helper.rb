module PointLineItemsHelper
EXPIRE_PERIOD = 365 # days
class PointExpirer

  def expire_by_date(date)
    # Query and expire points expiring on the given date
	if date.instance_of? Date
		date_expire = date - EXPIRE_PERIOD
		point_items = PointLineItem.where("id = ? created_at <= ? and points > 0",params[:id],params[:date_expire])
		expire_cnt=0
		point_items do |item|
			source_str="Points #{item.id} expired"
			if PointLineItem.create(user_id:id,source:source_str,points:-item.points)
				expire_cnt=expire_cnt+1
			end
		end
		expire_cnt
	else
		false
	end
  end
  def expire_by_user_id(id)
        # Query and expire points expiring by user.id
		date_expire = Date.today - EXPIRE_PERIOD
		point_items_sum = PointLineItem.where("id = ? created_at <= ? and points > 0",params[:id],params[:date_expire]).sum(points)
		# find records with expired date for appropriate user 
		points_list = PointLineItem.select("id").where("id = ? created_at <= ? and points > 0",params[:id],params[:date_expire])
		# format string with expired id's
		points_str=''
		expire_cnt=0
		points_list.each do |point|
			points_str=points_str+","+point.id.to_s
			expire_cnt=expire_cnt+1
		end
		source_str="Points #{points_str} expired"
		if PointLineItem.create(user_id:id,source:source_str,points:-point_items_sum)
			expire_cnt
		else
			false
		end
  end
end
end
