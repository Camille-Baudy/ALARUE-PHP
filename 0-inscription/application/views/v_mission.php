<div class ="progress">
    <div class="progress-bar" role="progressbar" style="width: 60%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">60%</div>
</div>
<form role="form" method="POST" action="index.php?action=validationMission">
<h1 class="h1_home"> Inscription bénévoles - Zaccros</h1>
<br />
	
	<input type="hidden" name="idSession" value="<?php echo "".$idSession."" ?>">
   
         <div class="container">
             <h1>Formulaire d'inscription</h1>
             <form>
               <fieldset>	
                <label for="mission">Quelles missions vous intéresseraient pour cette année?</label>
				   <br /><label><I>Vous pouvez choisir une ou plusieurs missions</I></label>
				    
				   <br />
                   <div class="form-group">
                     <div class="input-group-prepend">
						 <input type="checkbox" name="missions[]" value="1" /><br />
                         <button type="button" class="btn btn-primary">Décoration</button>
                         <input type="text" class="form-control" placeholder="Participer à la déco de l'année (gros chantiers ou petits ateliers). Faire les installations sur place, pas besoin de savoir bricoler !"readonly>
                     </div>
                   </div>
                   
                   <div class="form-group">
                     <div class="input-group-prepend">
						 <input type="checkbox" name="missions[]" value="2" /><br />
                         <button type="button" class="btn btn-secondary">Accueil Public</button>
                         <input type="text" class="form-control" placeholder="Accueillir, renseigner le public et tenir la boutique. C'est l'image des Zaccros devant le grand public !"readonly>
                     </div>
                   </div>
                   
                   <div class="form-group">
                     <div class="input-group-prepend">
						 <input type="checkbox" name="missions[]" value="3" /><br />
                         <button type="button" class="btn btn-success">Encadrement Spectacles</button>
                         <input type="text" class="form-control" placeholder="Accompagner les compagnies, leur donner un coup de main et encadrer le public lors des spectacles."readonly>
                     </div>
                   </div>
                   
                   <div class="form-group">
                     <div class="input-group-prepend">
						 <input type="checkbox" name="missions[]" value="4" /><br />
                         <button type="button" class="btn btn-danger">Technique</button>
                         <input type="text" class="form-control" placeholder="Son, lumière, installation technique sont des missions qui t'attendent en technique, mais pas besoin d'être un pro !"readonly>
                     </div>
                   </div>
                   
                   <div class="form-group">
                     <div class="input-group-prepend">
						 <input type="checkbox" name="missions[]" value="5" /><br />
                         <button type="button" class="btn btn-warning">Catering</button>
                         <input type="text" class="form-control" placeholder="Gérer le coin repas, le lieu où tout le monde se rencontre. On a tous besoin de manger !"readonly>
                     </div>
                   </div>
                   
                   <div class="form-group">
                     <div class="input-group-prepend">
						 <input type="checkbox" name="missions[]" value="6" /><br />
                         <button type="button" class="btn btn-info">Buvette</button>
                         <input type="text" class="form-control" placeholder="S'occuper du service au bar, sous le chapiteau des Zaccros." readonly>
                     </div>
                   </div>
                   
                   <div class="form-group">
                     <div class="input-group-prepend">
						 <input type="checkbox" name="missions[]" value="7" /><br />
                         <button type="button" class="btn" style="background-color: C3C8CD !important; color : black !important;">Logistique</button>
                         <input type="text" class="form-control" placeholder="Aider à l'installation des infrastructures (chapiteaux, tentes, scènes)."readonly>
                     </div>
                   </div>

                   <div class="form-group">
                     <div class="input-group-prepend">
						 <input type="checkbox" name="missions[]" value="8" /><br />
                         <button type="button" class="btn" style="background-color: DC86EA !important; color:white;">Entrée Site</button>
                         <input type="text" class="form-control" placeholder="Compter le nombre de spectateur avant chaque spectacle pour faire respecter les gestes barrières."readonly>
                     </div>
                   </div>
                        
                        <button type="submit" class="btn btn-primary">Valider</button> 
                    </fieldset>
                    <input id="prodId" name="idB" type="hidden" value="<?php echo $idB; ?>">
             </form>
         </div>