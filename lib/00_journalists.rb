
# À partir de cette array, code un programme ruby qui répondra aux questions suivantes :

# 1 - Combien y a-t-il de handle dans cette array ?
def check_length(lst)
  puts "The lenght of handles of journalist is #{lst.length}."
end

# 2 - Quelle est le handle le plus court de cette liste ?
def find_the_short(lst)
  temp = lst[0]
  for item in lst
    if item.length < temp.length
      temp = item
    end
  end

  lst.each do |handle| 
    handle.length < temp.length 
    temp = temp 
  end
  puts "Le handle le plus court de cette liste est #{temp}."
end

# Method to delete the @ for each handle
def handle_without_at(lst)
  temp = []
  for handle in lst
    new_handle = handle.slice(1..-1)
    temp.push(new_handle)
  end
  return temp
end

# 3 - Combien y-a-t'il de handle contenant 5 caractères (le @ ne compte pas pour un caractère)
def find_5_chars(lst)
  # temp = []
  # for handle in lst
  #   if handle.length == 5
  #     temp.push(handle)
  #   end
  # end
  temp = lst.select { |handle| handle.length == 5 }
  puts "Le nombre de handle contenant 5 caractères est #{temp.length}."
end

# 4 - Combien commencent par une majuscule (première lettre juste après le @) ?
def how_capitalize(lst)
  temp = []
  underscore = []
  for handle in lst
    if handle[0] =~ /[A-Z]/
      temp.push(handle)
    elsif handle[0] == "_"
      if handle[1] =~ /[A-Z]/
        underscore.push(handle)
      end
    end
  end
  puts "#{temp.length} handles commencent par une majuscule si on considère '_' comme une lettre."
  puts "Par contre, dans l'énoncé, on te demande la première lettre après le @, du coup est-ce que '_' est une lettre ?"
  puts "Pour moi non donc j'ai un total de #{ temp.length + underscore.length }"
   
end

# 5 - Trie la liste de handle par ordre alphabétique.
def sort_by_alphabet(lst)
  puts lst.sort(&:casecmp)
end

# 6 - Trie la liste de handle par taille des handle (les plus petits en premiers, les plus grands après)
def sort_by_length(lst)
  puts lst.sort_by(&:length)
end

# 7 - Quelle est la position dans l'array de la personne @epenser ?
def wtp_of_epenser(lst)
  puts "La position dans l'array de la personne @epenser est #{lst.find_index("@epenser")}"
end

# 8 - Sors-moi une répartition des handle par taille de ces derniers 
# (nombre de handle avec 1 caractère, nombre de handle avec 2 caractères, nombre de handle avec 3 caractères, etc)
def classify_handles(lst)
  hash_of_length =  lst.group_by { |x| x.length } # === hash { 9 => []}
  list_of_hash_keys =  hash_of_length.keys.sort
  list_of_hash_keys.each do |key|
    puts "Nombre de handle avec #{key} caractères : #{hash_of_length[key].length}"
  end
  
end

# Si tu as bien compris, quand tu lances le script, 
# les réponses aux questions s'affichent sur ton écran de Terminal via des puts. 
# N'hésite pas à ajouter un peu de pep’s à ton programme en écrivant des phrases, en ajoutant des blagues, 
# voir en faisant un menu (pour les plus chauds) où l'utilisateur peut choisir, dans une liste, 
# la question à laquelle le programme va répondre.

def perform
  handles_of_journalist = ["@jcunniet","@PaulLampon","@Aziliz31","@ssoumier","@marionsouzeau","@gaellombart","@bendarag","@AurelieLebelle","@julienduffe","@thomaspoupeau","@LilyRossignol","@ClairGuedon","@stephanieauguy","@claw_prolongeau","@_JulieMenard","@LColcomb","@Zlauwereys","@MeLonguet","@DorotheeLN","@NolwennCosson","@ADaboval","@Remibaldy","@bderveaux","@amandechap","@ELODIESOULIE","@nbongarcon","@HeloAb","@Panamorama","@gregplou","@BenoitBerthe","@LauraBruneau89","@Anthony_Lieures","@Sharonwaj","@mcsonkin","@pverduzier","@emiliel3","@Julien_MARION","@SophiFay","@bdelombre","@annalecerf","@AdriaBudry","@DejNikolic","@iJaffre","@CyrusleVirus","@GPardigon","@e_vallerey","@IsabelleSouquet","@AudeDavidRossi","@Yoann_Pa","@CeliaPenavaire","@perraultvincent","@cboulate","@JustineWeyl","@Paulinejacot","@juliechab","@aslechevallier","@phnou","@Seb_Pommier","@Alex_Bensaid","@GuillaumeGaven","@annelaurechouin","@Oliviader","@guerricp","@JMMarchaut","@cyceron","@gregory_raymond","@vhunsinger","@l_peillon","@fannyguinochet","@EAssayag","@KibweAdom","@YvonHerry","@JohanGarciajg","@saidlabidi","@lauranneprov","@LeaDavy","@francois_remy","@CGuicheteau","@FloMaillet","@m_perroud","@oBrunet_TSMF","@MoonVdc","@jc2taille","@NellyMoussu","@VirginK","@b_misa","@FabriceCouste","@barbara_prose","@lelia2m","@brunoaskenazi","@laurenechamp","@ysisbox","@juliengagliardi","@PierreLel","@kdeniau","@_TerraInc","@DominicArpin","@antoinfonteneau","@nanotousch","@jb_roch","@YaniKhezzar","@Anne_Bechet","@NCapart","@SamyBenNaceur","@Joumany","@Julietteraynal","@TGiraudet","@SaraTanit","@HappeFrederic","@antoinellorca","@michelpicot","@Sev_Ryne","@bobdobolino","@murdever","@YGrandmontagne","@Mnyo","@EdKOSCIANSKI","@tnoisette","@jankari","@delbello_rom","@rflechaux","@NadiaSorelli","@IT_Digital","@abarbaux","@PhilippeLeroy","@schaptal","@marionspee","@lisavignoli","@ChloeAeberhardt","@MartineJacot","@JuliaPascualita","@curieusedetout","@sgraveleau","@bif_o","@ElisaPineau","@zinebdryef","@apiquard","@pierrehaski","@StephanieDelmas","@Blandine_Garot","@vergara_i","@evan_lebastard","@SophieVclt","@OlivierLevrault","@alicedorgeval","@LouiseMalnoy","@alix_fx","@pierre_baudis","@LucMagoutier","@AgatheMuller","@SGianninelli","@PaulineBoyer33","@NaomiHalll","@romaindlx","@marionbr","@Burtschy","@JacobEtienne","@as_lizzani","@marie_simon","@LaureDaussy","@FabriceAmedeo","@min","@LoubnaChlaikhy","@PlummerWilliam","@OlivierMarin1","@alaurefremont","@mwesfreid","@ChBaDe","@pmathon","@theobaldmarie","@Lnpagesy","@marclandre","@paoliniesther","@Feertchak","@JBLitzler","@GuillaumeErrard","@quentinperinel","@TristanQM","@mlbo","@constancejamet","@LoraTerrazas","@emiliegeffray","@Mathilde_Sd","@CaroPiquet","@DCanivez","@TIM_7375","@blandinelc","@ivanrioufol","@arthurberdah","@SarahLecoeuvre","@guillaume_gui","@DamienMercereau","@W_Chloe","@Assma_MD","@EugenieBastie","@HiTech_lexpress","@bcondominas","@Laurie_Z_","@jeanfrancgerard","@MathieuPagura","@BGUYF","@AlainPiffaretti","@AudreyKucinskas","@julienhory","@Pierrefalga","@TiphThuillier","@cdaniez","@LigerBaptiste","@D_Peras","@julie_dlb","@Fatiha_Temmouri","@julian2lamancha","@GaetaneDeljurie","@JulianMattei","@M_Vicuna","@DeBruynOlivier","@Nehed_Jendoubi","@antoine_grenapi","@ColonnaGen","@VictoriaGairin","@Clement_Lacombe","@TVigoureux","@MargauxObriot","@solinedelos","@RocheSabine","@dangerkens","@EdouardDutour","@MDondeyne","@DupuisNathalie1","@bouscarel","@Mathieu2jean","@Sophie_T_J","@laurentcalixte","@patrockwilliams","@PascaleKremer","@AlexJaquin","@LauraIsaaz","@cath_robin","@Del_Gautherin","@Isaduriez","@lucietuile","@AugeyBastien","@mcastagnet","@AminaKalache","@mvaudano","@CParrot","@ombelinetips","@_JoinLion","@BarbolosiRose","@ToiBruno1","@FloraClodic","@xjbdx","@ceci_est_un_handle_vraiment_long","@AlexiaEy","@Emjy_STARK","@elcoco01","@rabilebon","@pflovens_","@FabriceFrossard","@MorganeSERRES","@MarjolaineKoch","@edgarsnow","@SRNLF","@CChassigneux","@KerinecMoran","@NassiraELM","@NewsRicard","@Sandreene","@Emilezrt","@Pierre_Do","@Micode","@CColumelli","@DavidAbiker","@ClementBergantz","@benjaminrabier","@celinekallmann","@edwyplenel","@C_Barbier","@JJBourdin_RMC","@LaurenceFerrari","@aslapix","@IsaMillet","@MaximeSwitek","@tomjoubert","@jszanchi","@roqueeva","@XavierBiseul","@florencesantrot","@AntoineCrochet","@freeman59","@MaudeML","@philippe_gulpi","@mathieum76","@kiouari","@imanemoustakir","@BenedicteMallet","@Emilie_Brouze","@antoinebarret","@_nicolasbocquet","@remibuhagiar","@CourretB","@AymericRobert","@miraelmartins","@pmaniere","@jesuisraphk","@David_Ingram","@pcelerier","@technomedia","@Geraldinedauver","@ThierryLabro","@Newsdusud","@nrauline","@gbregeras","@SCouasnonBFM","@actualites_nrv","@dimitrimoulins","@oli_aura","@FabieChiche","@Vincent_Raimblt","@ChristophGreuet","@PAlbuchay","@MarrauddesGrot","@vtalmon","@cedric","@olivierfrigara","@Julien_Jay","@LydiaBerroyer","@Shuua","@datisdaz","@Steuph","@ameliecharnay","@Bruno_LesNums","@LelloucheNico","@CciliaDiQuinzio","@Elodie_C","@SylvRolland","@Kocobe","@FL_Debes","@jdupontcalbo","@GarciaVictor_","@NicoRichaud","@RHoueix","@simottel","@DamienLicata","@annabelle_L","@Lea_Lejeune","@axel_deb","@marin_eben","@ptiberry","@MatthieuDelach","@sandrinecassini","@benjaminferran","@ppgarcia75","@NotPatrick","@ivalerio","@FabienneSchmitt","@alexgoude","@JeromeColombain","@manhack","@Capucine_Cousin","@Fsorel","@oliviertesquet","@marjoriepaillon","@ginades","@PierreTran","@DelphineCuny","@reesmarc","@lauratenoudji","@ldupin","@carolinedescham","@Lucile_Quillet","@cgabizon","@Allocab","@epenser","@JAGventeprivee","@frwrds","@Laure__Bourdon","@Xavier75","@maximeverner","@s_jourdain","@LoriHelloc"]
  new_handles_array = handle_without_at(handles_of_journalist)

  choice = ""
  while choice != "9"

    puts 
    puts "------------------------------------------------------------------------------------"
    puts "Pour avoir la réponse de chaque question taper le numéro correspondant"
    puts " 1 Pour connaitre combien y a-t-il de handle dans cette array "
    puts " 2 Pour connaitre quelle est le handle le plus court de cette liste"
    puts " 3 Pour connaitre combien y-a-t'il de handle contenant 5 caractères (le @ ne compte pas pour un caractère)"
    puts " 4 Pour connaitre combien commencent par une majuscule (première lettre juste après le @)"
    puts " 5 Pour connaitre la liste de handle par ordre alphabétique"
    puts " 6 Pour connaitre la liste de handle par taille des handle (les plus petits en premiers, les plus grands après)"
    puts " 7 Pour connaitre la position dans l'array de la personne @epenser"
    puts " 8 Pour connaitre la répartition des handle par taille de ces derniers"
    puts " 9 Pour sortir"
    puts "------------------------------------------------------------------------------------"
    choice = gets.chomp
    case choice 
    when "1"
      check_length(handles_of_journalist)
    when "2"
      find_the_short(handles_of_journalist)
    when "3"
      find_5_chars(new_handles_array)
    when "4"
      how_capitalize(new_handles_array)
    when "5"
      puts "Voici une liste de handles par ordre alphabetique"
      sort_by_alphabet(handles_of_journalist)
    when "6"
      puts "Voici une liste de handles par taille"
      sort_by_length(handles_of_journalist)
    when "7"
      wtp_of_epenser(handles_of_journalist)
    when "8"
      puts "Voici une répartition des handles :"
      classify_handles(handles_of_journalist)
    when "9"
      break
    end
  end
  sleep 1
  puts "Merci de m'avoir corriger Moussaillon ! Biz la famille"
end

perform




