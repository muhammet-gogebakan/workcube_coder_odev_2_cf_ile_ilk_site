<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<div style="margin:50px;">
    <h1>Okuduğum Kitaplar</h1>
</div>

<ul class="list-group">
  <li class="list-group-item"><a href="https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=coderwork2.ben_ve_projem">Ben ve Projem</a></li>
  <li class="list-group-item"><a href="https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=coderwork2.okudugum_kitaplar">Okuduğum Kitaplar</a></li>
  <li class="list-group-item"><a href="https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=coderwork2.sevdigim_filmler_ve_oyuncular">Sevdiğim Filmler ve Oyuncular</a></li>
  <li class="list-group-item"><a href="https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=coderwork2.ilham_aldiklarim">İlham Aldıklarım</a></li>
  <li class="list-group-item"><a href="https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=coderwork2.album">Albüm</a></li>
</ul>

<cfset okudugum_kitaplar = queryNew("KitapId,KitapAdi,Yazar","Integer,Varchar,Varchar", 
[ 
{KitapId=1,KitapAdi="Suç ve Ceza",Yazar="Dostoyevski"}, 
{KitapId=2,KitapAdi="Sefiller",Yazar="Victor Hugo"}, 
{KitapId=3,KitapAdi="Anna Karenina",Yazar="Tolstoy"},
{KitapId=4,KitapAdi="Vadideki Zambak",Yazar="Honoré de Balzac"},
{KitapId=5,KitapAdi="Notre Dame'ın Kamburu",Yazar="Victor Hugo"}
])>

<div style="margin:50px">
    <cf_grid_list>
      <thead>
        <tr>
          <th>Sıra No</th>
          <th>Kitap Adı</th>
          <th>Yazar</th>
        </tr>
      </thead>
      <tbody>
        <cfoutput query="okudugum_kitaplar">
          <tr>
          <td>#KitapId#</td>
          <td>#KitapAdi#</td>
          <td>#Yazar#</td>
          </tr>
        </cfoutput>
      </tbody>
    </cf_grid_list>
</div>
