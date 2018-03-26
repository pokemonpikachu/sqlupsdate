create proc
spupdatedetails3
@ssubid varchar(40),@sname varchar(30),@sdob date,
@scontact_num bigint,@semail varchar(30),
@ssim bigint ,@saddr1 varchar(30),
@saddr2 varchar(30),@scity varchar(20),
@spincode bigint,@sst varchar(20)
as
begin
update tbl2_subsc_team9 set name=@sname,dob=@sdob,contact_num=@scontact_num,email=@semail,sim_no=@ssim,addr1=@saddr1,addr2=@saddr2,city=@scity,pincode=@spincode,stat=@sst
where subid=@ssubid or sim_no=@ssim
end
  
  create proc sp_tbl2_subsc_team9
  @s varchar(20)
  as
  begin
  select * from tbl2_subsc_team9 where subid=@s  
  end           
  
  
  select * from tbl2_subsc_team9        
