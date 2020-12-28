import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Blog } from '../../models/blog.model'

@Component({
  selector: 'app-blog',
  templateUrl: './blog.component.html',
  styleUrls: ['./blog.component.scss']
})
export class BlogComponent implements OnInit {

  data: any[];
  p: number = 1;

  posts: Blog[];

  private BLOGS = 'https://pro-staff.ro/prostaff-api/v1/blogs';
  constructor(
    private _httpClient: HttpClient
  ) {
    // this.posts = [
    //   new Blog(
    //     'Lac pentru lemn cu efect de ceara – Protejeaza lemnul impotriva impuritatilor',
    //     '<img width="527" height="350" src="https://pro-staff.ro/wp-content/uploads/2020/05/Lac-pentru-lemn-incolor.png" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="" srcset="https://pro-staff.ro/wp-content/uploads/2020/05/Lac-pentru-lemn-incolor.png 527w, https://pro-staff.ro/wp-content/uploads/2020/05/Lac-pentru-lemn-incolor-300x199.png 300w" sizes="(max-width: 527px) 100vw, 527px">',
    //     ['Noutati'],
    //     'Mai 07, 2020',
    //     'Lacul pentru lemn TIXE cu efect de ceara, este foarte rezistent la zgârieturi , asigura o protecție definitivă, poate fi utilizat atât în ​​interior cât și în exterior, conferă lemnului o finisare moale, catifelată. Lacul este foarte rezistent la agenții atmosferici și razele UV. CARACTERISTICI PRINCIPALE – Conține ceară naturală; – Produs hiidrofug; – Finisaj […]'
    //   ),
    //   new Blog(
    //     'Vopsea tabla de scris – Intotdeauna o alegere buna!',
    //     '<img width="633" height="501" src="https://pro-staff.ro/wp-content/uploads/2020/04/vopsea-tabla-de-scris.png" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="Vopsea tabla de scris – Intotdeauna o alegere buna!" srcset="https://pro-staff.ro/wp-content/uploads/2020/04/vopsea-tabla-de-scris.png 633w, https://pro-staff.ro/wp-content/uploads/2020/04/vopsea-tabla-de-scris-300x237.png 300w, https://pro-staff.ro/wp-content/uploads/2020/04/vopsea-tabla-de-scris-600x475.png 600w" sizes="(max-width: 633px) 100vw, 633px">',
    //     ['Interior, ', 'Noutati, ', 'Tutoriale'],

    //     'Apr 24, 2020',
    //     'O vopsea tabla de scris nu numai ca poate aduce un plus locuintei tale, dar te poate scapa si de un stres, mai ales daca ai copii mici. Indiferent de locul in care alegi sa aplici vopseaua cu efect de tabla de scris, trebuie sa te asiguri ca el este curat, neted si gata de […]'
    //   ),
    //   new Blog(
    //     'Lavabila pentru interior – Ce culori alegem pentru reamenajarea locuintei?',
    //     '<img width="1000" height="667" src="https://pro-staff.ro/wp-content/uploads/2020/04/lavabila-pentru-interior.jpg" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="Lavabila pentru interior – Ce culori alegem pentru reamenajarea locuintei?" srcset="https://pro-staff.ro/wp-content/uploads/2020/04/lavabila-pentru-interior.jpg 1000w, https://pro-staff.ro/wp-content/uploads/2020/04/lavabila-pentru-interior-300x200.jpg 300w, https://pro-staff.ro/wp-content/uploads/2020/04/lavabila-pentru-interior-768x512.jpg 768w, https://pro-staff.ro/wp-content/uploads/2020/04/lavabila-pentru-interior-600x400.jpg 600w" sizes="(max-width: 1000px) 100vw, 1000px">',
    //     ['Noutati'],

    //     'Apr 16, 2020',
    //     'Tendințele în materie de design interior se schimbă de la an la an. Dacă în trecut sfatul specialiștilor era să optăm pentru culori naturale, pastelate, anul acesta accentul se pune pe culori puternice. Însă, când vine vorba de vopsitul pereților cu vopsea lavabilă, care înseamnă o schimbare de decor extrem de mare, alegerile trebuie făcute […]'
    //   ),
    //   new Blog(
    //     'Efect decorativ de piatra sparta',
    //     '<img width="960" height="413" src="https://pro-staff.ro/wp-content/uploads/2020/04/72102896_1633104420154737_4643384942951137280_o.png" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="Efect decorativ de piatra sparta" srcset="https://pro-staff.ro/wp-content/uploads/2020/04/72102896_1633104420154737_4643384942951137280_o.png 960w, https://pro-staff.ro/wp-content/uploads/2020/04/72102896_1633104420154737_4643384942951137280_o-300x129.png 300w, https://pro-staff.ro/wp-content/uploads/2020/04/72102896_1633104420154737_4643384942951137280_o-768x330.png 768w, https://pro-staff.ro/wp-content/uploads/2020/04/72102896_1633104420154737_4643384942951137280_o-600x258.png 600w" sizes="(max-width: 960px) 100vw, 960px">',
    //     ['Noutati, ', 'Tutoriale'],


    //     'Apr 15, 2020',
    //     'Tendințele în materie de design interior se schimbă de la an la an. Dacă în trecut sfatul specialiștilor era să optăm pentru culori naturale, pastelate, anul acesta accentul se pune pe culori puternice. Însă, când vine vorba de vopsitul pereților cu vopsea lavabilă, care înseamnă o schimbare de decor extrem de mare, alegerile trebuie făcute […]'
    //   ),
    //   new Blog(
    //     'TIXE-ORGANZA- Vopsea decorativa cu efect de matase',
    //     '<img width="590" height="393" src="https://pro-staff.ro/wp-content/uploads/2020/04/vopsea-decorativa-2.jpg" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="TIXE-ORGANZA- Vopsea decorativa cu efect de matase" srcset="https://pro-staff.ro/wp-content/uploads/2020/04/vopsea-decorativa-2.jpg 590w, https://pro-staff.ro/wp-content/uploads/2020/04/vopsea-decorativa-2-300x200.jpg 300w" sizes="(max-width: 590px) 100vw, 590px">',
    //     ['Interior, ', 'Noutati, ', 'Tutoriale'],

    //     'Apr 08, 2020',
    //     'Tendințele în materie de design interior se schimbă de la an la an. Dacă în trecut sfatul specialiștilor era să optăm pentru culori naturale, pastelate, anul acesta accentul se pune pe culori puternice. Însă, când vine vorba de vopsitul pereților cu vopsea lavabilă, care înseamnă o schimbare de decor extrem de mare, alegerile trebuie făcute […]'
    //   ),

    //   new Blog(
    //     'Vopsea decorativa interior – pentru o casa cu personalitate!',
    //     '<img width="1536" height="768" src="https://pro-staff.ro/wp-content/uploads/2019/10/0.jpg" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="Vopsea decorativa interior – pentru o casa cu personalitate!" srcset="https://pro-staff.ro/wp-content/uploads/2019/10/0.jpg 1536w, https://pro-staff.ro/wp-content/uploads/2019/10/0-600x300.jpg 600w, https://pro-staff.ro/wp-content/uploads/2019/10/0-300x150.jpg 300w, https://pro-staff.ro/wp-content/uploads/2019/10/0-768x384.jpg 768w, https://pro-staff.ro/wp-content/uploads/2019/10/0-1024x512.jpg 1024w" sizes="(max-width: 1536px) 100vw, 1536px">',
    //     ['Interior'],

    //     'Oct 08, 2019',
    //     'Tendințele în materie de design interior se schimbă de la an la an. Dacă în trecut sfatul specialiștilor era să optăm pentru culori naturale, pastelate, anul acesta accentul se pune pe culori puternice. Însă, când vine vorba de vopsitul pereților cu vopsea lavabilă, care înseamnă o schimbare de decor extrem de mare, alegerile trebuie făcute […]'
    //   ),
    //   new Blog(
    //     'Vopsea lavabila – solutia perfecta pentru reimprospatarea locuintei tale!',
    //     '<img width="613" height="337" src="https://pro-staff.ro/wp-content/uploads/2019/10/pppppppppppppppp.png" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="Vopsea lavabila – solutia perfecta pentru reimprospatarea locuintei tale!" srcset="https://pro-staff.ro/wp-content/uploads/2019/10/pppppppppppppppp.png 613w, https://pro-staff.ro/wp-content/uploads/2019/10/pppppppppppppppp-600x330.png 600w, https://pro-staff.ro/wp-content/uploads/2019/10/pppppppppppppppp-300x165.png 300w" sizes="(max-width: 613px) 100vw, 613px">',
    //     ['Constructii si amenajari, ', 'Interior, ', 'Noutati'],

    //     'Oct 14, 2019',
    //     'Tendințele în materie de design interior se schimbă de la an la an. Dacă în trecut sfatul specialiștilor era să optăm pentru culori naturale, pastelate, anul acesta accentul se pune pe culori puternice. Însă, când vine vorba de vopsitul pereților cu vopsea lavabilă, care înseamnă o schimbare de decor extrem de mare, alegerile trebuie făcute […]'
    //   ),
    //   new Blog(
    //     'Cum se face corect amorsarea peretilor?',
    //     '<img width="745" height="387" src="https://pro-staff.ro/wp-content/uploads/2019/10/Untitled.png" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="Cum se face corect amorsarea peretilor?" srcset="https://pro-staff.ro/wp-content/uploads/2019/10/Untitled.png 745w, https://pro-staff.ro/wp-content/uploads/2019/10/Untitled-600x312.png 600w, https://pro-staff.ro/wp-content/uploads/2019/10/Untitled-300x156.png 300w" sizes="(max-width: 745px) 100vw, 745px">',
    //     ['Constructii si amenajari, ', 'Exterior, ', 'Interior, ', 'Noutati'],




    //     'Oct 14, 2019',
    //     'Cum se face corect amorsarea peretilor? In cazul in care nu doresti sa angajezi un profesionist pentru lucrarile de finisare ale casei sau daca pur si simplu doresti sa cunosti detaliile tehnice, este foarte important sa stii pasii pe care trebuie sa ii urmezi dupa tencuirea peretilor: Pregatirea suprafetei: Suprafetele proaspat tencuite sau din beton […]'
    //   ),
    //   new Blog(
    //     'Tutorial aplicare – RENOVATIX – TIXE',
    //     '<img width="1280" height="720" src="https://pro-staff.ro/wp-content/uploads/2019/04/RENOVATIX-by-TIXE.jpg" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="Tutorial aplicare – RENOVATIX – TIXE" srcset="https://pro-staff.ro/wp-content/uploads/2019/04/RENOVATIX-by-TIXE.jpg 1280w, https://pro-staff.ro/wp-content/uploads/2019/04/RENOVATIX-by-TIXE-600x338.jpg 600w, https://pro-staff.ro/wp-content/uploads/2019/04/RENOVATIX-by-TIXE-300x169.jpg 300w, https://pro-staff.ro/wp-content/uploads/2019/04/RENOVATIX-by-TIXE-768x432.jpg 768w, https://pro-staff.ro/wp-content/uploads/2019/04/RENOVATIX-by-TIXE-1024x576.jpg 1024w" sizes="(max-width: 1280px) 100vw, 1280px">',
    //     ['Tutoriale'],

    //     'Apr 23, 2019',
    //     'Tutorial aplicare – RENOVATIX – TIXE VOPSEA EMAIL PENTRU CERAMICA Vopsea bicomponenta cu duritate si stralucire exceptionala de folosit pentru vopsirea ceramicii.tru: chiuvete, cazi sanitare inclusiv din fibra de sticla.   CARACTERISTICI PRINCIPALE Aderenta optima la orice suprafata. Duritate si rezistenta extrema la abraziune Nuanta excelenta de alb. INTREBUINTARE Metal (fier tratat corespunzator cu anti-rugina) […]'
    //   ),
    //   new Blog(
    //     'Tutorial aplicare – PERLATIX – TIXE',
    //     '<img width="590" height="393" src="https://pro-staff.ro/wp-content/uploads/2018/06/perlatix2.jpg" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="Tutorial aplicare – PERLATIX – TIXE" srcset="https://pro-staff.ro/wp-content/uploads/2018/06/perlatix2.jpg 590w, https://pro-staff.ro/wp-content/uploads/2018/06/perlatix2-300x200.jpg 300w" sizes="(max-width: 590px) 100vw, 590px">',
    //     ['Turoriale'],

    //     'Apr 23, 2019',
    //     'Tutorial aplicare – PERLATIX – TIXE VOPSEA DECORATIVA CU EFECT PERLAT Vopsea decorativa cu efect perlat ușor de aplicat și ideala pentru a da viață culorilor deja prezente în incapere. Îmbogățește suprafața tratată cu o suprafață excepțională cu efect perlat, ajuta la obtinerea unor efecte moderne si de culoare medii care variază în funcție de […]'
    //   ),
    //   new Blog(
    //     'Tutorial aplicare – GLACIAL – TIXE',
    //     '<img width="1280" height="720" src="https://pro-staff.ro/wp-content/uploads/2019/04/glacial.jpg" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="Tutorial aplicare – GLACIAL – TIXE" srcset="https://pro-staff.ro/wp-content/uploads/2019/04/glacial.jpg 1280w, https://pro-staff.ro/wp-content/uploads/2019/04/glacial-600x338.jpg 600w, https://pro-staff.ro/wp-content/uploads/2019/04/glacial-300x169.jpg 300w, https://pro-staff.ro/wp-content/uploads/2019/04/glacial-768x432.jpg 768w, https://pro-staff.ro/wp-content/uploads/2019/04/glacial-1024x576.jpg 1024w" sizes="(max-width: 1280px) 100vw, 1280px">',
    //     ['Turoriale'],

    //     'Apr 23, 2019',
    //     'Tutorial aplicare – GLACIAL – TIXE VOPSEA EFECT METALE PRETIOASE Vopsea pentru finisaj decorativ pe baza de apa, formulată cu pulbere de bronz, pentru suprafețe mari ce confera efectul metalic a mai multor metale prețioase. Ideal pentru medii prestigioase, locuri publice și birouri. Amestecarea cu alte emailuri/vopsele TIXE pe baza de apa: – raportul recomandat […]'
    //   ),
    //   new Blog(
    //     'Tutorial aplicare – QIBLI – TIXE',
    //     '<img width="600" height="684" src="https://pro-staff.ro/wp-content/uploads/2019/04/qibli-tixe.jpg" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="Tutorial aplicare – QIBLI – TIXE" srcset="https://pro-staff.ro/wp-content/uploads/2019/04/qibli-tixe.jpg 600w, https://pro-staff.ro/wp-content/uploads/2019/04/qibli-tixe-263x300.jpg 263w" sizes="(max-width: 600px) 100vw, 600px">',
    //     ['Turoriale'],

    //     'Apr 06, 2019',
    //     'Tutorial aplicare – QIBLI – TIXE Finisaj decorativ pe baza de apa formulat cu nisip si pulberi metalice pentru a reproduce efectul real metalizat nisipos inclusiv pe suprafete mari, conferind suportului aspectul celor mai pretioase metale. CARACTERISTICI PRINCIPALE – Efect decorativ metalizat nisipos – Acoperire excelenta – Aderenta excelenta – Excelent caracter lavabil – Usor de […]'
    //   ),
    //   new Blog(
    //     'Tutorial aplicare – WOOD TIX – TIXE',
    //     '<img width="594" height="338" src="https://pro-staff.ro/wp-content/uploads/2019/03/Schermata-2018-06-01-alle-12.07.49.png" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="Tutorial aplicare – WOOD TIX – TIXE" srcset="https://pro-staff.ro/wp-content/uploads/2019/03/Schermata-2018-06-01-alle-12.07.49.png 594w, https://pro-staff.ro/wp-content/uploads/2019/03/Schermata-2018-06-01-alle-12.07.49-300x171.png 300w" sizes="(max-width: 594px) 100vw, 594px">',
    //     ['Turoriale'],

    //     'Apr 06, 2019',
    //     'Tutorial aplicare – WOOD TIX – TIXE'
    //   ),
    //   new Blog(
    //     'Tutorial aplicare – DORATURA – TIXE',
    //     '<img width="590" height="393" src="https://pro-staff.ro/wp-content/uploads/2018/06/doratura-interni-acqua-5.jpg" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="Tutorial aplicare – DORATURA – TIXE" srcset="https://pro-staff.ro/wp-content/uploads/2018/06/doratura-interni-acqua-5.jpg 590w, https://pro-staff.ro/wp-content/uploads/2018/06/doratura-interni-acqua-5-300x200.jpg 300w" sizes="(max-width: 590px) 100vw, 590px">',
    //     ['Turoriale'],

    //     'Mar 30, 2019',
    //     'Tutorial aplicare DORATURA – TIXE VOPSEA DECORATIVA EXTERIOR CU EFECT AURIU METALIC PE BAZA SOLVENT Vopsea pe bază de rășină sintetică, pulbere pigmentată cu bronz, în nuanțe diferite. Este gata de utilizat. Ideal pentru tratarea stâlpurilor de lemn pentru cadre, stucuri, fillete și decorațiuni de mobilier de epocă, restaurarea mobilierului antic, retușarea obiectelor placate cu […]'
    //   ),
    //   new Blog(
    //     'Pompa hidraulica Wagner HC 950',
    //     '',
    //     ['Turoriale'],

    //     'Oct 27, 2018',
    //     'Cu pompa hidraulica Wagner HC 950 si gletul Krea Kolori poti acoperi suprafete mari, minim 500 mp/zi. Gletul autonivelant se aplica intr-o singura mana, aplicat bine nu necesita slefuire, peste el se aplica o singura mana de lavabila. Wagner HC 950 este un echipament hidraulic foarte util, ideal pentru santierele mari, cu putere mare de […]'
    //   ),
    //   new Blog(
    //     'Tutorial aplicare – GLITTERTIX – TIXE',
    //     '<img width="800" height="533" src="https://pro-staff.ro/wp-content/uploads/2018/06/Glitterix-TIXE-cutie.jpg" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="Tutorial aplicare – GLITTERTIX – TIXE" srcset="https://pro-staff.ro/wp-content/uploads/2018/06/Glitterix-TIXE-cutie.jpg 800w, https://pro-staff.ro/wp-content/uploads/2018/06/Glitterix-TIXE-cutie-600x400.jpg 600w, https://pro-staff.ro/wp-content/uploads/2018/06/Glitterix-TIXE-cutie-300x200.jpg 300w, https://pro-staff.ro/wp-content/uploads/2018/06/Glitterix-TIXE-cutie-768x512.jpg 768w" sizes="(max-width: 800px) 100vw, 800px">',
    //     ['Tutoriale'],

    //     'Aug 12, 2018',
    //     'Sclipici de aur și argint în emulsie neutră specială. Simplu de utilizat, acestea pot fi aplicate pe pereții deja zugrăviți pentru a înfrumuseța aspectul final. Glittertix de la Tixe are un avantaj imens: acesta poate fi adăugat direct la vopselele comune neutre sau colorate, emailuri cu toate nuanțele pe baza de apa.(pentru pereti, mobila si obiecte din lemn și metal). Acest lucru face ca Glittertix să fie cel mai economic decorativ de pe piață.'
    //   ),
    //   new Blog(
    //     'Aplicare vopsea epoxidica pentru parodoseli – TIKKURILA',
    //     '<img width="600" height="424" src="https://pro-staff.ro/wp-content/uploads/2018/05/0e2afd13184053.5627157fcb57c.jpg" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="Aplicare vopsea epoxidica pentru parodoseli – TIKKURILA" srcset="https://pro-staff.ro/wp-content/uploads/2018/05/0e2afd13184053.5627157fcb57c.jpg 600w, https://pro-staff.ro/wp-content/uploads/2018/05/0e2afd13184053.5627157fcb57c-300x212.jpg 300w" sizes="(max-width: 600px) 100vw, 600px">',
    //     ['Turoriale'],

    //     'Mai 05, 2018',
    //     'Tikkurila – Produse disponibile la noi în magazin! – finisaje pentru pardoseli, – aplicații industriale pentru lemn și metal'
    //   ),
    //   new Blog(
    //     'Din luna aprilie magazinul nostru vinde produsele brandului Italia TIXE',
    //     '<img width="595" height="555" src="https://pro-staff.ro/wp-content/uploads/2018/01/TIXE-PRODUSE_001-Copie.jpg" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="Din luna aprilie magazinul nostru vinde produsele brandului Italia TIXE" srcset="https://pro-staff.ro/wp-content/uploads/2018/01/TIXE-PRODUSE_001-Copie.jpg 595w, https://pro-staff.ro/wp-content/uploads/2018/01/TIXE-PRODUSE_001-Copie-300x280.jpg 300w" sizes="(max-width: 595px) 100vw, 595px">',
    //     ['Interioe, ', 'Noutati'],

    //     'Ian 25, 2018',
    //     'Avem placerea sa va anuntam ca incepand din luna Aprilie acestui an, magazinul nostru va importa produsele brandului Italia Tixe – produse destinate pentru decoratiuni si finisaje interioare. Catalog prezentare TIXE '
    //   ),
    // ]
  }

  ngOnInit(): void {
    this._httpClient.get(this.BLOGS).subscribe((data: any) => {
      console.log(data)
      this.posts = data.data;
      
    })
  }

}
