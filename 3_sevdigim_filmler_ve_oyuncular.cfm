<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<div style="margin:50px;">
    <h1>Sevdiğim Filmler ve Oyuncular</h1>
</div>

<ul class="list-group">
  <li class="list-group-item"><a href="https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=coderwork2.ben_ve_projem">Ben ve Projem</a></li>
  <li class="list-group-item"><a href="https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=coderwork2.okudugum_kitaplar">Okuduğum Kitaplar</a></li>
  <li class="list-group-item"><a href="https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=coderwork2.sevdigim_filmler_ve_oyuncular">Sevdiğim Filmler ve Oyuncular</a></li>
  <li class="list-group-item"><a href="https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=coderwork2.ilham_aldiklarim">İlham Aldıklarım</a></li>
  <li class="list-group-item"><a href="https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=coderwork2.album">Albüm</a></li>

  <cfquery name="films_actors" datasource="#DSN#">

  SELECT  
    *
  FROM WORKCUBE_CODER_2_FILMS F

  LEFT JOIN WORKCUBE_CODER_2_ACTORS A ON A.ActorId = F.ActorId

</cfquery>

<div style="margin:50px">
    <cf_grid_list>
      <thead>
        <tr>
          <th>Sıra No</th>
          <th>Film Adı</th>
          <th>Aktör Adı</th>
        </tr>
      </thead>
      <tbody>
        <cfoutput query="films_actors">
          <tr>
          <td>#FILMID#</td>
          <td><img src=#ImageSrc# width="50" height="auto"><cfoutput>  </cfoutput>#FILMADI#</td>
          <td>#ACTORADI#</td>
          </tr>
        </cfoutput>
      </tbody>
    </cf_grid_list>
</div>
