--select a.[Creator Name],a.[Channel URL], sum(a.[Total Chanel Views]) as "Total_views"
--from dbo.analysis a
--group by a.[Creator Name],a.[Channel URL]
--order by Total_views desc

-- the youtube channel can be said succes if avg of total channel views by subscriber is more low subscriber with maximum reach
--select [Creator Name], round(avg(a.[Total Chanel Views]/a.[Total Channel Subcribers]),0) as "reach"
--from dbo.analysis a
--group by a.[Creator Name]
--order by reach desc

--avg views per day for 1st month as the reach of particular video hardly lasts for a month  
--select [Video Title], round(([Total Chanel Views]/DATEDIFF(day,[Date of Video Upload],DATEADD(month,1,[Date of Video Upload]) )),0) as "avg_views_perday"
--from dbo.analysis
--order by avg_views_perday desc

--like ratio
--set arithabort off
--set ansi_warnings off
--select [Channel URL],[Creator Name],sum([Total Chanel Views])/sum([No of likes]) as "like ratio"
--from dbo.analysis
--group by [Channel URL], [Creator Name]
--order by [like ratio] desc

-- gender wise likes
--select [Creator Gender], sum([No of Likes]) as total_likes
--from dbo.analysis
--group by [Creator Gender]
--order by total_likes desc

--select [Language of the Video], sum([No of Likes]) as 'total likes', sum([Total Chanel Views]) as 'total views', sum([Total Channel Subcribers]) as 'total subscribers'
--from dbo.analysis
--where [Language of the Video] is not null
--group by [Language of the Video]
--order by [total views] desc

--select [Channel URL],[Creator Name],sum([No of Videos the Channel]) as 'Total Channels of videos'
--from dbo.analysis
--where [Creator Name] is not null
--group by [Creator Name], [Channel URL]

--no of likes per day, calculated for 1st month
--select [Channel URL],[Creator Name],sum([No of Likes]) as 'Total Likes' , sum(round(([No of Likes]/DATEDIFF(day,[Date of Video Upload],DATEADD(month,1,[Date of Video Upload]) )),0)) as 'likes per day'
--from dbo.analysis
--where [Creator Name] is not null
--group by [Channel URL], [Creator Name]
--order by [likes per day] desc

-- yearwise total number of likes, chanel views, chanel subscribers
--select year([Date of Video Upload]) as 'years', sum([Total Chanel Views]) as 'Total Chanel Views' , sum([No of Likes]) as 'No of Likes', sum([Total Channel Subcribers]) as 'Total Channel Subcribers'
--from dbo.analysis
--where [Total Chanel Views] is not null
--group by year([Date of Video Upload]) 
--order by year([Date of Video Upload]) asc







