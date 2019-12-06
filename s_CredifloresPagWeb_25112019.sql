create table TBL_UCOMPONENT_TBL_CONTENT_TYPE
(
UCC_NID BIGINT PRIMARY KEY IDENTITY(1,1),
COM_NID BIGINT,
COT_NID BIGINT
)

GO

insert into TBL_RCOMPONENT values('ImagenCarrusel','<div class="item"><img src="*variableImage1*" class="img-responsive" /></div>',1,null,null,null)
insert into TBL_RCOMPONENT values('Lista_ImagenCarrousel','<li data-target="#myCarousel" data-slide-to="*consecutivo*" />',1,null,null,null)
insert into TBL_RCOMPONENT values('pnlNoticias','<div class="item">
 <div class="row">
  <div>
   <div class="col-sm-3">
    <img src="*variableImage1*" class="img-responsive" />
   </div>
   <div class="col-sm-9">
    <p>*variableText1*</p>
   </div>
  </div>
 </div>
</div>',1,null,null,null)
insert into TBL_RCOMPONENT values('accordion_pnlBeneficios','<div class="panel panel-primary">
 <div class="panel-heading">
  <h4 class="panel-title">
   <a data-toggle="collapse" data-parent="#accordion" href="#collapse*consecutivo*" class="" aria-expanded="true"> *variableText1* </a>
  </h4>
 </div>
 <div id="collapse*consecutivo*" class="panel-collapse collapse in" aria-expanded="true" style="">
  <div class="panel-body">
   <p>
    *variableText2*
   </p>
  </div>
 </div>
</div>',1,null,null,null)
insert into TBL_RCOMPONENT values('accordion1_pnlEducacion','<div class="panel panel-primary">
 <div class="panel-heading">
  <h4 class="panel-title">
  <a data-toggle="collapse" data-parent="#accordionEducacion" href="#colEducacion*consecutivo*" class="collapsed" aria-expanded="false">*variableText1*</a>
  </h4>
 </div>
 <div id="colEducacion*consecutivo*" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
  <div class="panel-body">
   <p style="text-align: justify">
    *variableText2*
   </p>
  </div>
 </div>
</div>',1,null,null,null)
insert into TBL_RCOMPONENT values('accordion1_div3_pnlTarjeta','
<div class="panel panel-primary">
 <div class="panel-heading">
  <h4 class="panel-title">
  <a data-toggle="collapse" data-parent="#accordionRecaudo" href="#colRecaudo*consecutivo*" class="collapsed" aria-expanded="false">*variableText1*</a>
  </h4>
 </div>
 <div id="colRecaudo*consecutivo*" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
  <div class="panel-body">
   <p style="text-align: justify">*variableText2*</p>
  </div>
 </div>
</div>',1,null,null,null)
insert into TBL_RCOMPONENT values('accordion1_div2_pnlSeguridad','<div class="panel panel-primary"><div class="panel-heading">
   <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordionSeguridad" href="#colSeguridad*consecutivo*">
            *variableText1*
        </a></h4>
</div><div id="colSeguridad*consecutivo*" class="panel-collapse collapse"><div class="panel-body">
        <p style="text-align: justify">
          *variableText2*
        </p>
    </div></div></div>',1,null,null,null)
insert into TBL_RCOMPONENT values('pnlPortafolioServicios','
<div class="panel panel-primary ">
	<div class="panel-heading">
		<h4 class="panel-title">
			<a data-toggle="collapse" data-parent="#accordion" href="#pnlCollapse*consecutivo*" class="collapsed" aria-expanded="false">
				*variableText1*
			</a>
		</h4>
	</div>
	<div id="pnlCollapse*consecutivo*" class="collapse" aria-expanded="false" style="height: 0px;">
		<div class="panel-body">
			<div class="row">
				<div class="col-sm-4"><p>
					<img class="img-responsive pull-left" src="*variableImage1*" alt="tava" /></p>
				</div>
				<div class="col-sm-8">
					<div class="row">
						<div class="col-sm-12">
							<p>
							*variableText2*
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>',1,null,null,null)
insert into TBL_RCOMPONENT values('accordion1_pnl2Accordion_pnlPortafolioServicios',
'<div class="item">
	<div class="row">
		<div class="card">
			<h4>*variableText*</h4>
			<p>
			*variableText*
			</p>
			<img alt="100%x280" src="*variableImage1*" class="img-responsive" data-holder-rendered="true" />
			<strong>*variableText1*</strong><br/>
			<p class="card-text">
				*variableText2*
			</p>
		</div>
	</div>
</div>',1,null,null,null)
insert into TBL_RCOMPONENT values('div1_accordion1_pnl2Accordion_pnlPortafolioServicios','<div class="card">
   <h4>*variableText1*</h4>
   <p>
    *variableText2*
   </p>
   <img data-src="" alt="100%x280" src="*variableImage1*" class="img-responsive" data-holder-rendered="true" />
   <strong>*variableText3*</strong><br/>
   <p class="card-text">
    *variableText4*
   </p>
  </div>',1,null,null,null)
insert into TBL_RCOMPONENT values('div2_accordion1_pnl2Accordion_pnlPortafolioServicios','<div class="card">
   <h4>*variableText1*</h4>
   <p>
    *variableText2*
   </p>
   <img data-src="" alt="100%x280" src="*variableImage1*" class="img-responsive" data-holder-rendered="true" />
   <strong>*variableText3*</strong><br/>
   <p class="card-text">
    *variableText4*
   </p>
  </div>',1,null,null,null)
insert into TBL_RCOMPONENT values('Carrousel1_Convenios','<div class="item">
 <div class="row">
  <div class="card">
   <h4>*variableText1*</h4>
   <p>
    *variableText2*
   </p>
   <img data-src="" alt="100%x280" src="*variableImage1*" class="img-responsive" data-holder-rendered="true" />
   <strong>*variableText3*</strong><br/>
   <p class="card-text">
    *variableText4*
   </p>
  </div>

  
 </div>
</div>',1,null,null,null)
insert into TBL_RCOMPONENT values('Front1_Carrousel1_Convenios','<div class="card">
   <h4>*variableText1*</h4>
   <p>
    *variableText2*
   </p>
   <img data-src="" alt="100%x280" src="*variableImage1*" class="img-responsive" data-holder-rendered="true"/>
   <strong>*variableText3*</strong><br/>
   <p class="card-text">
    *variableText4*
   </p>
  </div>',1,null,null,null)
insert into TBL_RCOMPONENT values('pnlcollapseSocial_pnl5Accordion_pnlPortafolioServicios','<div class="panel-body">
 <div class="row">
  <div class="col-sm-4"><p>
   <img class="img-responsive pull-left" src="*variableImage1*" alt="tava"/></p>
  </div>
  <div class="col-sm-8">
   <div class="row">
    <div class="col-sm-12">
     <p>*variableText1*</p>
    </div>
   </div>
  </div>
 </div>
</div>',1,null,null,null)
insert into TBL_RCOMPONENT values('accordion1_pnlBody_pnl4Accordion_pnlPortafolioServicios','<div class="item">
 <div class="row">
  <div class="card">
   <h4>*variableText1*</h4>
   <p>
    *variableText2*
   </p>
   <img data-src="" alt="100%x280" src="*variableImage1*" class="img-responsive" data-holder-rendered="true"/>
   <strong>*variableText3*</strong><br/>
   <p class="card-text">
    *variableText4*
   </p>
  </div>

  
 </div>
</div>',1,null,null,null)
insert into TBL_RCOMPONENT values('pnlBody_pnl3Accordion_pnlPortafolioServicios','<div class="panel-body">
 <div class="row">
  <div class="col-sm-4"><p>
   <img class="img-responsive pull-left" src="*variableImage1*" alt="tava"/></p>
  </div>
  <div class="col-sm-8">
   <div class="row">
    <div class="col-sm-12">
     <p>*variableText1*</p>
    </div>
   </div>
  </div>
 </div>
</div>',1,null,null,null)
insert into TBL_RCOMPONENT values('div1_pnlContainerNosotros','<div class="tab-pane " id="*consecutivo*">
    *variableText1*
</div>',1,null,null,null)
insert into TBL_RCOMPONENT values('tab2_div1_pnlContainerNosotros','<div class="panel-body">
  <div class="row">
   <div class="col-sm-4"><p>
   <img class="img-responsive pull-left" src="*variableImage1*" alt="tava"/></p>
   </div>
   <div class="col-sm-8">
    <div class="row">
     <div class="col-sm-12">
      <p>*variableText1*</p>
     </div>
    </div>
   </div>
  </div>
 </div>',1,null,null,null)
insert into TBL_RCOMPONENT values('tab3_div1_pnlContainerNosotros','<div class="panel-body">
  <div class="row">
   <div class="col-sm-4"><p>
   <img class="img-responsive pull-left" src="*variableImage1*" alt="tava"/></p>
   </div>
   <div class="col-sm-8">
    <div class="row">
     <div class="col-sm-12">
      <p>*variableText1*</p>
     </div>
    </div>
   </div>
  </div>
 </div>',1,null,null,null)
insert into TBL_RCOMPONENT values('tab4_div1_pnlContainerNosotros','<div class="panel-body">
  <div class="row">
   <div class="col-sm-4"><p>
   <img class="img-responsive pull-left" src="*variableImage1*" alt="tava"/></p>
   </div>
   <div class="col-sm-8">
    <div class="row">
     <div class="col-sm-12">
      <p>*variableText1*</p>
     </div>
    </div>
   </div>
  </div>
 </div>',1,null,null,null)
insert into TBL_RCOMPONENT values('tab5_div1_pnlContainerNosotros','<div class="panel-body">
  <div class="row">
   <div class="col-sm-4"><p>
   <img class="img-responsive pull-left" src="*variableImage1*" alt="tava"/></p>
   </div>
   <div class="col-sm-8">
    <div class="row">
     <div class="col-sm-12">
      <p>*variableText1*</p>
     </div>
    </div>
   </div>
  </div>
 </div>',1,null,null,null)
insert into TBL_RCOMPONENT values('tab6_div1_pnlContainerNosotros','<div class="panel-body">
  <div class="row">
   <div class="col-sm-4"><p>
   <img class="img-responsive pull-left" src="*variableImage1*" alt="tava"/></p>
   </div>
   <div class="col-sm-8">
    <div class="row">
     <div class="col-sm-12">
      <p>*variableText1*</p>
     </div>
    </div>
   </div>
  </div>
 </div>',1,null,null,null)
insert into TBL_RCOMPONENT values('tab7_div1_pnlContainerNosotros','<div class="panel-body">
  <div class="row">
   <div class="col-sm-4"><p>
   <img class="img-responsive pull-left" src="*variableImage1*" alt="tava"/></p>
   </div>
   <div class="col-sm-8">
    <div class="row">
     <div class="col-sm-12">
      <p>*variableText1*</p>
     </div>
    </div>
   </div>
  </div>
 </div>',1,null,null,null)
insert into TBL_RCOMPONENT values('tab8_div1_pnlContainerNosotros','<div class="panel-body">
  <div class="row">
   <div class="col-sm-4"><p>
   <img class="img-responsive pull-left" src="*variableImage1*" alt="tava"/></p>
   </div>
   <div class="col-sm-8">
    <div class="row">
     <div class="col-sm-12">
      <p>*variableText1*</p>
     </div>
    </div>
   </div>
  </div>
 </div>',1,null,null,null)


 go

insert into TBL_UCOMPONENT_TBL_CONTENT_TYPE values(1,5)
insert into TBL_UCOMPONENT_TBL_CONTENT_TYPE values(2,52566)
insert into TBL_UCOMPONENT_TBL_CONTENT_TYPE values(3,69863)
insert into TBL_UCOMPONENT_TBL_CONTENT_TYPE values(4,52605)
insert into TBL_UCOMPONENT_TBL_CONTENT_TYPE values(5,52632)
insert into TBL_UCOMPONENT_TBL_CONTENT_TYPE values(6,52681)
insert into TBL_UCOMPONENT_TBL_CONTENT_TYPE values(7,52695)
insert into TBL_UCOMPONENT_TBL_CONTENT_TYPE values(8,52699)
insert into TBL_UCOMPONENT_TBL_CONTENT_TYPE values(9,52700)
insert into TBL_UCOMPONENT_TBL_CONTENT_TYPE values(10,52732)
insert into TBL_UCOMPONENT_TBL_CONTENT_TYPE values(11,52756)
insert into TBL_UCOMPONENT_TBL_CONTENT_TYPE values(12,52765)
insert into TBL_UCOMPONENT_TBL_CONTENT_TYPE values(13,52839)
insert into TBL_UCOMPONENT_TBL_CONTENT_TYPE values(14,55102)
insert into TBL_UCOMPONENT_TBL_CONTENT_TYPE values(15,55104)
insert into TBL_UCOMPONENT_TBL_CONTENT_TYPE values(16,55105)
insert into TBL_UCOMPONENT_TBL_CONTENT_TYPE values(17,55106)
insert into TBL_UCOMPONENT_TBL_CONTENT_TYPE values(18,55107)
insert into TBL_UCOMPONENT_TBL_CONTENT_TYPE values(19,55109)
insert into TBL_UCOMPONENT_TBL_CONTENT_TYPE values(20,55164)
insert into TBL_UCOMPONENT_TBL_CONTENT_TYPE values(21,55227)
insert into TBL_UCOMPONENT_TBL_CONTENT_TYPE values(22,69863)
insert into TBL_UCOMPONENT_TBL_CONTENT_TYPE values(23,100298)
insert into TBL_UCOMPONENT_TBL_CONTENT_TYPE values(24,100302)
--insert into TBL_UCOMPONENT_TBL_CONTENT_TYPE values(25,5)

go 

--alter table dbo.TBL_RCOMPONENT add COM_NCANT_VAR_TEXT BIGINT
--alter table dbo.TBL_RCOMPONENT add COM_NCANT_VAR_IMAGE BIGINT
--alter table dbo.TBL_RCOMPONENT add COM_NCANT_VAR_DOC BIGINT

alter table dbo.TBL_RCOMPONENT add COM_OWITH_LIST BIT
alter table dbo.TBL_RCOMPONENT add COM_NPARENT_COMPONENT BIGINT

go


update TBL_CONTENT 
SET CON_NID_PARENT = 52790
WHERE CON_NID in (52795,52826,52846)

update TBL_CONTENT_TYPE
set COT_CISTYLE =
'
<div id="carrouselCredito" class="carousel slide" data-ride="carousel">
	<ol class="carousel-indicators">
		[?li1_accordion1_pnlBody_pnl4Accordion_pnlPortafolioServicios]
		[?li2_accordion1_pnlBody_pnl4Accordion_pnlPortafolioServicios]
		[?li3_accordion1_pnlBody_pnl4Accordion_pnlPortafolioServicios]
	</ol>
	<div class="carousel-inner" role="listbox">
		[?subDiv1_div1_pnlBody_pnl4Accordion_pnlPortafolioServicios]
		[?subDiv2_div1_pnlBody_pnl4Accordion_pnlPortafolioServicios]
		[?subDiv3_div1_pnlBody_pnl4Accordion_pnlPortafolioServicios]
	</div>
	<a class="left carousel-control" href="#carrouselCredito" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left" aria-hidden="true" />
	<span class="sr-only">Previous</span></a><a class="right carousel-control" href="#carrouselCredito" role="button" data-slide="next">
	<span class="glyphicon glyphicon-chevron-right" aria-hidden="true" /><span class="sr-only">Next</span></a>

</div>'
where cot_nid = 52765

GO

alter PROCEDURE [dbo].[SPR_INS_NEW_COMPONENT]
@PNID_COMPONENTE BIGINT,
@RESULT_SP AS VARCHAR(100) OUTPUT
AS
BEGIN
	begin try
		--DECLARE @PNID_COMPONENTE BIGINT
		--SET @PNID_COMPONENTE = 12

		declare @CANT_VAR_TEXT BIGINT, @CANT_VAR_IMAGE BIGINT, @CONT BIGINT, 
		@COMPONENT VARCHAR(MAX), @INDICE BIGINT, @NAME_COMPONENT VARCHAR(MAX), 
		@ID_COMPONENT BIGINT,@SQL VARCHAR(MAX),@NAME_VARIABLE VARCHAR(MAX),
		@ID_SECTION BIGINT, @ORDER BIGINT, @CONTENEDOR VARCHAR(MAX),
		@COMPONENT_LIST VARCHAR(MAX)

		SET @ID_SECTION = (SELECT SEC_NID 
			FROM TBL_CONTENT A INNER JOIN 
			TBL_CONTENT_TYPE B ON A.COT_NID = B.COT_NID INNER JOIN 
			TBL_UCOMPONENT_TBL_CONTENT_TYPE C ON B.COT_NID = C.COT_NID
		 WHERE COM_NID = @PNID_COMPONENTE
		)

		SET @COMPONENT = (SELECT CAST(COM_CVALUE AS VARCHAR(MAX)) FROM TBL_RCOMPONENT WHERE COM_NID = @PNID_COMPONENTE)
		SET @NAME_COMPONENT = (SELECT COM_CNAME FROM TBL_RCOMPONENT WHERE COM_NID = @PNID_COMPONENTE)
		--LIST
		SET @COMPONENT_LIST = (	
								CASE WHEN (
									SELECT COM_OWITH_LIST 
									FROM TBL_RCOMPONENT WHERE COM_NID = @PNID_COMPONENTE
								) = 1 THEN
									(
									SELECT CAST(COM_CVALUE AS VARCHAR(MAX)) 
									FROM TBL_RCOMPONENT WHERE COM_NPARENT_COMPONENT = @PNID_COMPONENTE
									)
								ELSE
									''
								END
								)
		

		SET @ID_COMPONENT = (SELECT COT_NID FROM TBL_RCOMPONENT C INNER JOIN TBL_UCOMPONENT_TBL_CONTENT_TYPE UC ON C.COM_NID = UC.COM_NID WHERE C.COM_NID = @PNID_COMPONENTE)
		--SET @CANT_VAR_TEXT = (SELECT COM_NCANT_VAR_TEXT FROM TBL_RCOMPONENT WHERE COM_NID = @PNID_COMPONENTE)
		--SET @CANT_VAR_IMAGE = (SELECT COM_NCANT_VAR_IMAGE FROM TBL_RCOMPONENT WHERE COM_NID = @PNID_COMPONENTE)
		SET @INDICE = (SELECT CHARINDEX('*variableImage',cast(@COMPONENT as varchar(max)))) 
		SET @CONT = 1
		SET @SQL = ''
		SET @CONTENEDOR = (SELECT CAST(COT_CISTYLE AS varchar(MAX)) 
		FROM TBL_UCOMPONENT_TBL_CONTENT_TYPE UCC INNER JOIN
		TBL_CONTENT_TYPE CT ON UCC.COT_NID = CT.COT_NID
		WHERE COM_NID = @PNID_COMPONENTE)
		

		SET @ORDER = (	select MAX(B1.CON_NORDER) + 1
						from TBL_CONTENT_TYPE a inner join 
						TBL_CONTENT b on a.cot_nid = b.cot_nid
						inner join TBL_CONTENT b1 on b1.CON_NID_PARENT = b.CON_NID
						where a.cot_nid = @ID_COMPONENT group by b1.CON_NID_PARENT)

		--print @ID_COMPONENT
		--print @ORDER

		WHILE (@INDICE <> 0) --@CONT < @CANT_VAR_TEXT
		BEGIN
	
			SET @COMPONENT = REPLACE(@COMPONENT,'*variableImage' + CAST(@CONT AS VARCHAR(MAX)) + '*','[@IMAGE_' + @NAME_COMPONENT + CAST(@ORDER AS VARCHAR(MAX)) + ']')
			SET @NAME_VARIABLE = 'IMAGE_' + @NAME_COMPONENT + CAST(@CONT AS VARCHAR(MAX))
	
			SET @SQL = @SQL + ' INSERT INTO TBL_RVARIABLE VALUES(''' + @NAME_VARIABLE + ''',''Ruta Imagen ' + @NAME_COMPONENT + CAST(@ORDER AS VARCHAR(MAX)) + ''','''',1,2,null,null,@ID_COT_NID) '
			
			SET @INDICE = (CHARINDEX('*variableImage',cast(@COMPONENT as varchar(max)))) 
			SET @CONT = @CONT + 1
	
			--PRINT @INDICE
			--PRINT @COMPONENT
			--PRINT @CONT
		END

		------

		SET @INDICE = (SELECT CHARINDEX('*variableText',cast(@COMPONENT as varchar(max)))) 
		set @CONT = 1

		WHILE (@INDICE <> 0) --@CONT < @CANT_VAR_TEXT
		BEGIN
	
			SET @COMPONENT = REPLACE(@COMPONENT,'*variableText' + CAST(@CONT AS VARCHAR(MAX)) + '*','[@TEXT_' + @NAME_COMPONENT + CAST(@ORDER AS VARCHAR(MAX)) + ']')
			SET @NAME_VARIABLE = 'TEXT_' + @NAME_COMPONENT + CAST(@CONT AS VARCHAR(MAX))
	
			SET @SQL = @SQL + ' INSERT INTO TBL_RVARIABLE VALUES(''' + @NAME_VARIABLE + ''',''Texto ' + @NAME_COMPONENT + CAST(@ORDER AS VARCHAR(MAX)) + ''','''',1,1,null,null,@ID_COT_NID) '

			SET @INDICE = (CHARINDEX('*variableText',cast(@COMPONENT as varchar(max)))) 
			SET @CONT = @CONT + 1
	
			--PRINT @INDICE
			--PRINT @COMPONENT
			--PRINT @CONT
		END

		SET @CONTENEDOR = REPLACE(@CONTENEDOR,'<!--New Object-->',
		'[?' + @NAME_COMPONENT + '_' + CAST(@ORDER AS VARCHAR(MAX)) + '] 
		<!--New Object--> '
		)


		print @CONTENEDOR

		--PRINT @ID_COMPONENT
		--PRINT @SQL
		--PRINT @ORDER
		--PRINT @NAME_COMPONENT
		--PRINT @CONT
		--PRINT @COMPONENT

		if ( (SELECT CHARINDEX('*contInt*',@NAME_COMPONENT)) > 0)
		begin
			SET @SQL =  ' DECLARE @ID_COT_NID BIGINT ' +
			' INSERT INTO TBL_CONTENT_TYPE VALUES(''' + replace(@NAME_COMPONENT,'*contInt*',CAST(@ORDER AS VARCHAR(MAX))) + ''','''', ''' + CAST(@COMPONENT AS VARCHAR(MAX)) + ''',1,1) ' +
			' SET @ID_COT_NID = SCOPE_IDENTITY() ' +
			' INSERT INTO TBL_CONTENT VALUES(''' + replace(@NAME_COMPONENT,'*contInt*',CAST(@ORDER AS VARCHAR(MAX))) + ''','''', ' +  CAST(@ORDER AS VARCHAR(MAX)) + ',1,' + 
			CAST(@ID_COMPONENT AS VARCHAR(MAX)) + ', @ID_COT_NID ,' + 
			CAST(@ID_SECTION AS VARCHAR(MAX))+ ')' + ' ' + @SQL

		end
		else
		begin
			SET @SQL =  ' DECLARE @ID_COT_NID BIGINT ' +
			' INSERT INTO TBL_CONTENT_TYPE VALUES(''' + @NAME_COMPONENT + '_' + CAST(@ORDER AS VARCHAR(MAX)) + ''','''', ''' + CAST(@COMPONENT AS VARCHAR(MAX)) + ''',1,1) ' +
			' SET @ID_COT_NID = SCOPE_IDENTITY() ' +
			' INSERT INTO TBL_CONTENT VALUES(''' + @NAME_COMPONENT  + '_' + CAST(@ORDER AS VARCHAR(MAX)) +  ''','''', ' +  CAST(@ORDER AS VARCHAR(MAX)) + ',1,' + 
			CAST(@ID_COMPONENT AS VARCHAR(MAX)) + ', @ID_COT_NID ,' + 
			CAST(@ID_SECTION AS VARCHAR(MAX))+ ')' + ' ' + @SQL
		end

		IF(LEN(@COMPONENT_LIST) > 0)
		BEGIN

			SET @NAME_COMPONENT = (SELECT COM_CNAME FROM TBL_RCOMPONENT WHERE COM_NPARENT_COMPONENT = @PNID_COMPONENTE)
			SET @CONT = (select ((COUNT(B1.CON_NORDER) + 2)  / 4) + 1
						from TBL_CONTENT_TYPE a inner join 
						TBL_CONTENT b on a.cot_nid = b.cot_nid
						inner join TBL_CONTENT b1 on b1.CON_NID_PARENT = b.CON_NID
						where a.cot_nid = @ID_COMPONENT group by b1.CON_NID_PARENT)

						PRINT @CONT
			SET @COMPONENT_LIST = REPLACE(@COMPONENT_LIST,'*consecutivo*',CAST(@CONT AS VARCHAR(MAX)))

			--SET @SQL = @SQL + ' SET @LIST = ''' + @COMPONENT_LIST + ''' '

			SET @SQL = @SQL + ' INSERT INTO TBL_CONTENT_TYPE VALUES(''' + @NAME_COMPONENT + '' + CAST(@ORDER AS VARCHAR(MAX)) + ''','''', ''' + CAST(@COMPONENT_LIST AS VARCHAR(MAX)) + ''',1,1) ' +
			' SET @ID_COT_NID = SCOPE_IDENTITY() ' +
			' INSERT INTO TBL_CONTENT VALUES(''' + @NAME_COMPONENT  + '' + CAST(@ORDER AS VARCHAR(MAX)) +  ''','''', ' +  CAST(@ORDER AS VARCHAR(MAX)) + ',1,' + 
			CAST(@ID_COMPONENT AS VARCHAR(MAX)) + ', @ID_COT_NID ,' + 
			CAST(@ID_SECTION AS VARCHAR(MAX))+ ') ' 

			SET @CONTENEDOR = REPLACE(@CONTENEDOR,'<!--New ObjectList-->',
			'[?' + @NAME_COMPONENT + '' + CAST(@ORDER AS VARCHAR(MAX)) + '] 
			<!--New ObjectList--> '
			)
		END

		--PRINT '1'
		--PRINT @SQL
		--PRINT '1'
		
		SET @SQL = @SQL + 
		' UPDATE TBL_CONTENT_TYPE SET COT_CISTYLE = ''' + @CONTENEDOR + ''' WHERE COT_NID = ' + CAST(@ID_COMPONENT AS VARCHAR(MAX))

		--SET @ORDER = (	select *--count(B1.CON_NORDER) + 1
		--		from TBL_CONTENT_TYPE a inner join 
		--		TBL_CONTENT b on a.cot_nid = b.cot_nid
		--		inner join TBL_CONTENT b1 on b1.CON_NID_PARENT = b.CON_NID
		--		where a.cot_nid = 5 group by b1.CON_NID_PARENT)



		PRINT @SQL


		EXEC(@SQL)

		RETURN 1
	END TRY
	BEGIN CATCH
		
		SET @RESULT_SP = 'Error: No fue posible actualizar el registro, por favor valide.'
		RETURN 0
	END CATCH  


END

GO

ALTER PROCEDURE [dbo].[GET_CONTENT_LIST]  
@PAG_NID AS bigint
AS    
BEGIN    
	
    
	SELECT DISTINCT	C.CON_NID ContentId,
					CT.COT_CDESCRIPTION ContentName, 
					C.CON_OSTATE ContentState,
					CT.COT_OUPGRADEABLE,
					UC.COM_NID Component,
					CAST(CO.COM_CVALUE AS VARCHAR(MAX)) ComponentHtml
	FROM TBL_CONTENT C
	INNER JOIN TBL_CONTENT_TYPE CT ON C.COT_NID = CT.COT_NID
	INNER JOIN TBL_RSECTION S ON C.SEC_NID = S.SEC_NID
	INNER JOIN TBL_TSECTION_PAGE SP ON S.SEC_NID = SP.SEC_NID
	INNER JOIN TBL_PAGE P ON SP.PAG_NID = P.PAG_NID
	left join TBL_UCOMPONENT_TBL_CONTENT_TYPE UC ON UC.COT_NID = CT.COT_NID 
	left join TBL_RCOMPONENT CO ON CO.COM_NID = UC.COM_NID

	WHERE P.PAG_NID = @PAG_NID
	AND CT.COT_OUPGRADEABLE = 1
    
END


go


UPDATE TBL_CONTENT_TYPE
SET COT_CISTYLE =
'<div class="dvIndex1">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
	<ol class="carousel-indicators">
			[?Lista1_ImagenCarrousel1]
			[?Lista2_ImagenCarrousel2]
			[?Lista3_ImagenCarrousel3]
			[?Lista4_ImagenCarrousel4]
			[?Lista5_ImagenCarrousel4]
			[?Lista6_ImagenCarrousel6]
			[?Lista7_ImagenCarrousel7]
			[?Lista8_ImagenCarrousel8]
			[?Lista9_ImagenCarrousel9]
			[?Lista10_ImagenCarrousel10]
			[?Lista11_ImagenCarrousel11]
			<!--[?Lista12_ImagenCarrousel12]-->
			<!--[?Lista13_ImagenCarrousel13]-->
			<!--[?Lista14_ImagenCarrousel14]-->
			<!--[?Lista15_ImagenCarrousel15]-->
			<!--[?Lista16_ImagenCarrousel16]-->
			<!--[?Lista17_ImagenCarrousel17]-->
			<!--[?Lista18_ImagenCarrousel18]-->
			<!--[?Lista19_ImagenCarrousel19]-->
			<!--[?Lista20_ImagenCarrousel20]-->
			<!--New ObjectList-->
		</ol>
		<div class="carousel-inner">
			[?ImagenCarrusel_1]
			[?ImagenCarrusel_2]
			[?ImagenCarrusel_3]
			[?ImagenCarrusel_4]
			[?ImagenCarrusel_5]
			[?ImagenCarrusel_6]
			[?ImagenCarrusel_7]
			[?ImagenCarrusel_8]
			[?ImagenCarrusel_9]
			[?ImagenCarrusel_10]
			[?ImagenCarrusel_11]
			<!--[?ImagenCarrusel_12]-->
			<!--[?ImagenCarrusel_13]-->
			<!--[?ImagenCarrusel_14]-->
			<!--[?ImagenCarrusel_15]-->
			<!--[?ImagenCarrusel_16]-->
			<!--[?ImagenCarrusel_17]-->
			<!--[?ImagenCarrusel_18]-->
			<!--[?ImagenCarrusel_19]-->
			<!--[?ImagenCarrusel_20]-->
			<!--New Object-->
		</div>
	</div>
</div>'
WHERE COT_NID = 5

update tbl_content set con_norder = 1 where con_nid= 6
update tbl_content set con_norder = 2 where con_nid= 7
update tbl_content set con_norder = 3 where con_nid= 8
update tbl_content set con_norder = 4 where con_nid= 127450
update tbl_content set con_norder = 5 where con_nid= 127451
update tbl_content set con_norder = 6 where con_nid= 127452
update tbl_content set con_norder = 7 where con_nid= 127453
update tbl_content set con_norder = 8 where con_nid= 127454
update tbl_content set con_norder = 9 where con_nid= 127830
update tbl_content set con_norder = 10 where con_nid= 127831
update tbl_content set con_norder = 11 where con_nid= 127832
update tbl_content set con_norder = 12 where con_nid= 127833
update tbl_content set con_norder = 13 where con_nid= 127834
update tbl_content set con_norder = 14 where con_nid= 127835
update tbl_content set con_norder = 15 where con_nid= 127836
update tbl_content set con_norder = 16 where con_nid= 127837
update tbl_content set con_norder = 17 where con_nid= 127838
update tbl_content set con_norder = 18 where con_nid= 127839
update tbl_content set con_norder = 19 where con_nid= 127840
update tbl_content set con_norder = 20 where con_nid= 127841

update tbl_content set con_norder = 21 where con_nid= 9
update tbl_content set con_norder = 22 where con_nid= 10
update tbl_content set con_norder = 23 where con_nid= 11
update tbl_content set con_norder = 24 where con_nid= 127445
update tbl_content set con_norder = 25 where con_nid= 127446
update tbl_content set con_norder = 26 where con_nid= 127447
update tbl_content set con_norder = 27 where con_nid= 127448
update tbl_content set con_norder = 28 where con_nid= 127449
update tbl_content set con_norder = 29 where con_nid= 127818
update tbl_content set con_norder = 30 where con_nid= 127819
update tbl_content set con_norder = 31 where con_nid= 127820
update tbl_content set con_norder = 32 where con_nid= 127821
update tbl_content set con_norder = 33 where con_nid= 127822
update tbl_content set con_norder = 34 where con_nid= 127823
update tbl_content set con_norder = 35 where con_nid= 127824
update tbl_content set con_norder = 36 where con_nid= 127825
update tbl_content set con_norder = 37 where con_nid= 127826
update tbl_content set con_norder = 38 where con_nid= 127827
update tbl_content set con_norder = 39 where con_nid= 127828
update tbl_content set con_norder = 40 where con_nid= 127829

go


update TBL_CONTENT_TYPE
set COT_CISTYLE = '<hr /><div id="pnlNoticias"><div id="carrouselNoticias" class="carousel slide" data-ride="carousel"><div class="carousel-inner">
				[?pnl1_carrouselNoticias]
				[?pnl2_carrouselNoticias]
				[?pnl3_carrouselNoticias]
				[?pnl4_carrouselNoticias]
				[?pnl5_carrouselNoticias]
				[?pnl6_carrouselNoticias]
				[?pnl7_carrouselNoticias]
				[?pnl8_carrouselNoticias]
				[?pnl9_carrouselNoticias]
				[?pnl10_carrouselNoticias]
			<!--New Object-->
		</div></div></div><hr />'
where COT_NID = 69863

go

update tbl_content set con_norder = 1 where con_nid= 79114
update tbl_content set con_norder = 2 where con_nid= 127809
update tbl_content set con_norder = 3 where con_nid= 127810
update tbl_content set con_norder = 4 where con_nid= 127811
update tbl_content set con_norder = 5 where con_nid= 127812
update tbl_content set con_norder = 6 where con_nid= 127813
update tbl_content set con_norder = 7 where con_nid= 127814
update tbl_content set con_norder = 8 where con_nid= 127815
update tbl_content set con_norder = 9 where con_nid= 127816
update tbl_content set con_norder = 10 where con_nid= 127817

go


update TBL_CONTENT_TYPE 
set COT_CISTYLE = '
<div class="row">
	<div class="col-sm-12">
		<div class="panel-group" id="accordion">
			[?pnl1_accordion_pnlBeneficios]
			[?pnl2_accordion_pnlBeneficios]
			[?pnl3_accordion_pnlBeneficios]
			<!--New Object-->
		</div>
	</div>
</div>
',
cot_oupgradeable = 1
where COT_NID = 52566

go

update TBL_CONTENT_TYPE set cot_cistyle =
'<div class="panel-group" id="accordionEducacion">[?pnl1_accordion1_pnlEducacion][?pnl2_accordion1_pnlEducacion][?pnl3_accordion1_pnlEducacion] <!--New Object--></div>',
cot_oupgradeable = 1 where cot_nid = 52581
update TBL_CONTENT_TYPE set cot_cistyle =
'<div class="panel-group" id="accordionRecaudo">[?pnl1_accordion1_div3_pnlTarjeta][?pnl2_accordion1_div3_pnlTarjeta][?pnl3_accordion1_div3_pnlTarjeta][?pnl4_accordion1_div3_pnlTarjeta]<!--New Object--></div>',
cot_oupgradeable = 1 where cot_nid = 	52605
update TBL_CONTENT_TYPE set cot_cistyle =
'<div class="panel-group" id="accordionSeguridad">[?pnl1_accordion1_div2_pnlSeguridad][?pnl2_accordion1_div2_pnlSeguridad]<!--New Object--></div>',
cot_oupgradeable = 1 where cot_nid = 52632