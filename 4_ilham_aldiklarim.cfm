<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<div style="margin:50px;">
    <h1>İlham Aldıklarım</h1>
</div>

<ul class="list-group">
  <li class="list-group-item"><a href="https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=coderwork2.ben_ve_projem">Ben ve Projem</a></li>
  <li class="list-group-item"><a href="https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=coderwork2.okudugum_kitaplar">Okuduğum Kitaplar</a></li>
  <li class="list-group-item"><a href="https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=coderwork2.sevdigim_filmler_ve_oyuncular">Sevdiğim Filmler ve Oyuncular</a></li>
  <li class="list-group-item"><a href="https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=coderwork2.ilham_aldiklarim">İlham Aldıklarım</a></li>
  <li class="list-group-item"><a href="https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=coderwork2.album">Albüm</a></li>
</ul>

<cfset ilham_aldiklarim = queryNew("IdolId,IdolAdi,Job","Integer,Varchar,Varchar", 
[ 
{IdolId=1,IdolAdi="Ali KUŞÇU",Job="Astronom"}, 
{IdolId=2,IdolAdi="Aziz SANCAR",Job="Kimyager"}, 
{IdolId=3,IdolAdi="Cahit ARF",Job="Matematikçi"},
{IdolId=4,IdolAdi="Ferya ÖZEL",Job="Astrofizikçi"},
{IdolId=5,IdolAdi="Pîrî REİS",Job="Denizci"}
])>

<div style="margin:50px">
    <cf_grid_list>
      <thead>
        <tr>
          <th>Sıra No</th>
          <th>Bilim İnsanı</th>
          <th>Uzmanlık</th>
        </tr>
      </thead>
      <tbody>
        <cfoutput query="ilham_aldiklarim">
          <tr>
          <td>#IdolId#</td>
          <td>#IdolAdi#</td>
          <td>#Job#</td>
          </tr>
        </cfoutput>
      </tbody>
    </cf_grid_list>
</div>

