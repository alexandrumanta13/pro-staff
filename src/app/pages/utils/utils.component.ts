import { Component, OnInit } from '@angular/core';
import { Config, Menu } from '../../components/accordion/types';

@Component({
  selector: 'app-utils',
  templateUrl: './utils.component.html',
  styleUrls: ['./utils.component.scss']
})
export class UtilsComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }
  options: Config = { multi: false };
  
  menus: Menu[] = [
    { 
      name: 'CAT COSTA SERVICIUL DE CURATENIE?',
     
      active: true,
      submenu: [
        { name: 'Fiecare serviciu de curatenie are costul sau. Acesta depinde de tipul de curatenie care trebuie efectuata, gradul de murdarie si suprafata care trebuie curatata. Preturile prezentate pe site sunt orientative, de aceea, te incurajam sa ne contactezi pentru a-ti oferi un pret corect.'},

      ]
    },
    { 
      name: 'CAT COSTA DEPLASAREA ECHIPEI?',
     
      active: false,
      submenu: [
        { name: 'Echipa noastra se deplaseaza oriunde in Bucuresti si Ilfov in mod gratuit pana la locuinta sau spatiul comercial sau sediul de birouri unde esre solicitata.' }
      ]
    },
    { 
      name: 'CU CAT TIMP INAINTE POT PROGRAMA O SEDINTA?',
      
      active: false,
      submenu: [
        { name: 'In functie de disponibilitatea echipei noastre, se pot face programari chiar si cu 24 de ore inainte. Uneori, toti membrii echipei noastre pot fi deja programati. De aceea, te incurajam sa ne contactezi pentru a avea un raspuns cat mai relevant.' }
      ]
    },
    { 
      name: 'CUM POT SA PLATESC?',
      
      active: false,
      submenu: [
        { name: 'Poti plati fie in numerar, dupa efectuarea sedintei de curatenie, fie prin virament bancar in termenul stabilit prin contract.' }
      ]
    },
    { 
      name: 'SE POT FACE ABONAMENTE DE CURATENIE?',
      
      active: false,
      submenu: [
        { name: 'Desigur! Putem stabili de comun acord o data a recurentei, in functie de frecventa de care ai nevoie. Poate fi saptamanal, bilunar sau lunar. Ai alte nevoi? Contacteaza-ne!' }
      ]
    },
    { 
      name: 'CINE VA VENI SA FACA CURATENIE?',
      
      active: false,
      submenu: [
        { name: 'O echipa formata din cel putin doua persoane se va deplasa la locuinta sau sediul firmei tale. Venim echipati cu aparatura ultraperformanta, pentru ca totul sa dureze cat mai putin, iar rezultatul sa fie pe masura asteptarilor tale.' }
      ]
    },
    { 
      name: 'CE PRODUSE DE CURATENIE TREBUIE SA CUMPAR?',
      
      active: false,
      submenu: [
        { name: 'Absolut niciunul! Venim noi cu tot “arsenalul” de care avem nevoie. Folosim doar produse profesionale, diferite in functie de tipul de suprafata si materialul pe care le aplicam.' }
      ]
    },
    { 
      name: 'SE POATE REPROGRAMA SEDINTA DE CURATENIE?',
      
      active: false,
      submenu: [
        { name: 'Bineinteles! Intelegem ca uneori pot aparea situatii neprevazute, care ne dau planurile peste cap. Totusi, te rugam sa ne anunti cu cel putin 48 de ore pentru a ne putea reorganiza.' }
      ]
    }
  ];
}
