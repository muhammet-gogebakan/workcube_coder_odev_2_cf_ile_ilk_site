<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<div style="margin:50px;">
    <h1>Albüm</h1>
</div>

<ul class="list-group">
  <li class="list-group-item"><a href="https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=coderwork2.ben_ve_projem">Ben ve Projem</a></li>
  <li class="list-group-item"><a href="https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=coderwork2.okudugum_kitaplar">Okuduğum Kitaplar</a></li>
  <li class="list-group-item"><a href="https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=coderwork2.sevdigim_filmler_ve_oyuncular">Sevdiğim Filmler ve Oyuncular</a></li>
  <li class="list-group-item"><a href="https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=coderwork2.ilham_aldiklarim">İlham Aldıklarım</a></li>
  <li class="list-group-item"><a href="https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=coderwork2.album">Albüm</a></li>
</ul>

<cfhttp method="get" url="https://gist.githubusercontent.com/jasonbaldridge/2668632/raw/e56320c485a33c339791a25cc107bf70e7f1d763/music.json" result="sonuc"> <!---JSON veriye ulaşmak için http veri çekme---->
</cfhttp>
<!----
<cfdump var="#sonuc.filecontent#"><hr>
---->
<cfset json_data = "#sonuc.filecontent#">   <!---JSON veri--->
<!---
<cfdump var="#deserializeJSON(json_data)#"> <hr>
---->
<cfset album = "#deserializeJSON(json_data)#">  <!----JSON to Array----->

<div style="margin:50px">
    <cf_grid_list>
        <cfloop index="index" from="1" to="#ArrayLen(album)#">
            <cfoutput>
                <thead>
                    <tr>
                        <th colspan="2"><h6>Sanatçı: #album[index].name#</h6></th>
                    </tr>
                    <tr>
                        <th>Parça Adı</th>
                        <th>Süre</th>
                    </tr> 
                </thead>
            </cfoutput>
            <cfloop index="index_2" from="1" to="#ArrayLen(album[index].albums[index].songs)#">    <!--- array to string çıktı --->
                <tbody>
                    <cfoutput>
                        <tr>
                            <td>#album[index].albums[index].songs[index_2].title#</td>
                            <td>#album[index].albums[index].songs[index_2].length#</td>
                        </tr>
                    </cfoutput>
                </tbody>
            </cfloop>
        </cfloop>
    </cf_grid_list>
</div>

