import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['fr', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? frText = '',
    String? enText = '',
  }) =>
      [frText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // home
  {
    '1ktbjjm5': {
      'fr': 'Search...',
      'en': '',
    },
    '2n0ilsiw': {
      'fr': 'Spécial promo',
      'en': '',
    },
    'lccf52le': {
      'fr': 'voir plus',
      'en': '',
    },
    '00wbtdec': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    'mzelifvx': {
      'fr': 'Produit 1',
      'en': '',
    },
    'j0nz62ax': {
      'fr': '50 000  FCFA',
      'en': '',
    },
    'p42fzqo3': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    'cgi17lr6': {
      'fr': 'Produit 2',
      'en': '',
    },
    'b7xul7xw': {
      'fr': '35 000  FCFA',
      'en': '',
    },
    'ksa2e5q8': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    'tlwmckd0': {
      'fr': 'Produit 3',
      'en': '',
    },
    'ivjg2cmc': {
      'fr': '500 000  FCFA',
      'en': '',
    },
    'rwplntla': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    'n9lfuchx': {
      'fr': 'Produit 4',
      'en': '',
    },
    'zrfqmdp8': {
      'fr': '20 000  FCFA',
      'en': '',
    },
    'ezhvvnvq': {
      'fr': 'Nouveauté',
      'en': '',
    },
    '0ughbx52': {
      'fr': 'voir plus',
      'en': '',
    },
    'v3owx0fl': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    'wdrokgfy': {
      'fr': 'Produit 1',
      'en': '',
    },
    '54h2569s': {
      'fr': '50 000  FCFA',
      'en': '',
    },
    '6dfoneyh': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    'kmid9gq5': {
      'fr': 'Produit 2',
      'en': '',
    },
    'z8ew68w5': {
      'fr': '35 000  FCFA',
      'en': '',
    },
    '8knbqit4': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    'b9d107aq': {
      'fr': 'Produit 3',
      'en': '',
    },
    'm298de2p': {
      'fr': '500 000  FCFA',
      'en': '',
    },
    'l6sf7bi7': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    'e54gah3p': {
      'fr': 'Produit 4',
      'en': '',
    },
    'ydlmfyqy': {
      'fr': '20 000  FCFA',
      'en': '',
    },
    'vmhbcxyi': {
      'fr': 'Offre de la semaine',
      'en': '',
    },
    'ku9r8qha': {
      'fr': 'voir plus',
      'en': '',
    },
    '4ei7qnin': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    '01f8jhcs': {
      'fr': 'Produit 1',
      'en': '',
    },
    'izvzt6da': {
      'fr': '50 000  FCFA',
      'en': '',
    },
    'lpg9vbz3': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    'ffxrd27g': {
      'fr': 'Produit 2',
      'en': '',
    },
    'b2tplb55': {
      'fr': '35 000  FCFA',
      'en': '',
    },
    'x9mp6x31': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    '6z1v33tg': {
      'fr': 'Produit 3',
      'en': '',
    },
    'eb414x17': {
      'fr': '500 000  FCFA',
      'en': '',
    },
    'eh3z9xiz': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    'ap0eczs4': {
      'fr': 'Produit 4',
      'en': '',
    },
    '1t4a50r7': {
      'fr': '20 000  FCFA',
      'en': '',
    },
    '8p0qbgb2': {
      'fr': 'Paradis des bricoleurs',
      'en': '',
    },
    'u5e1uq1l': {
      'fr': 'voir plus',
      'en': '',
    },
    '80ugkxb4': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    '1vfra7ie': {
      'fr': 'Produit 1',
      'en': '',
    },
    'oowh079e': {
      'fr': '50 000  FCFA',
      'en': '',
    },
    'fz9b8s15': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    'eyv4awqm': {
      'fr': 'Produit 2',
      'en': '',
    },
    '5k0r7pzj': {
      'fr': '35 000  FCFA',
      'en': '',
    },
    'l8uh5u5s': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    'onjl8fut': {
      'fr': 'Produit 3',
      'en': '',
    },
    'kfyseivt': {
      'fr': '500 000  FCFA',
      'en': '',
    },
    'ram1csm7': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    '73w045wi': {
      'fr': 'Produit 4',
      'en': '',
    },
    '6t0ypze7': {
      'fr': '20 000  FCFA',
      'en': '',
    },
    'gn8co6tp': {
      'fr': 'Paradis des jardiniers',
      'en': '',
    },
    'brzxjcvr': {
      'fr': 'voir plus',
      'en': '',
    },
    'tu7yldir': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    '5jmkggew': {
      'fr': 'Produit 1',
      'en': '',
    },
    'b1e5sye0': {
      'fr': '50 000  FCFA',
      'en': '',
    },
    '1h7eo7cz': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    '1moysala': {
      'fr': 'Produit 2',
      'en': '',
    },
    'tto82mei': {
      'fr': '35 000  FCFA',
      'en': '',
    },
    'm9hj0fe9': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    'fpo372e6': {
      'fr': 'Produit 3',
      'en': '',
    },
    'jafvvh7p': {
      'fr': '500 000  FCFA',
      'en': '',
    },
    'ugshzfat': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    'zo93asge': {
      'fr': 'Produit 4',
      'en': '',
    },
    'krur2gk5': {
      'fr': '20 000  FCFA',
      'en': '',
    },
    'fgc8qa2o': {
      'fr': 'Moments détente',
      'en': '',
    },
    '8e2tpz5m': {
      'fr': 'voir plus',
      'en': '',
    },
    '7lyhawvj': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    'd6psfelu': {
      'fr': 'Produit 1',
      'en': '',
    },
    'bngfxt5b': {
      'fr': '50 000  FCFA',
      'en': '',
    },
    'kuv9u43f': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    'wqd0240b': {
      'fr': 'Produit 2',
      'en': '',
    },
    'm8ny8l4i': {
      'fr': '35 000  FCFA',
      'en': '',
    },
    'x4pr3u0w': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    'g838q4rt': {
      'fr': 'Produit 3',
      'en': '',
    },
    'wcgnazo8': {
      'fr': '500 000  FCFA',
      'en': '',
    },
    'tpnfrqm2': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    'tbk5dodi': {
      'fr': 'Produit 4',
      'en': '',
    },
    '4z0if6xl': {
      'fr': '20 000  FCFA',
      'en': '',
    },
    'mhleq43a': {
      'fr': 'Technibat',
      'en': '',
    },
    '2r6tk1vd': {
      'fr': 'Menu',
      'en': '',
    },
    'gw81kli1': {
      'fr': 'Mon profile',
      'en': '',
    },
    'e1aeiviy': {
      'fr': 'Modifier mon code',
      'en': '',
    },
    'g8ly7z0f': {
      'fr': 'Mes commandes',
      'en': '',
    },
    '0rwxc1ci': {
      'fr': 'Notifications',
      'en': '',
    },
    'sdxdm85w': {
      'fr': 'Home',
      'en': '',
    },
    'qyj8p8fi': {
      'fr': 'Catégories',
      'en': '',
    },
    'qktx7toy': {
      'fr': 'Mes envies',
      'en': '',
    },
    '4e0rno66': {
      'fr': 'Mon panier',
      'en': '',
    },
    '81bxlsb3': {
      'fr': 'Visiter notre site web',
      'en': '',
    },
    'k94sr7q0': {
      'fr': 'Se déconnecter',
      'en': '',
    },
    'a0f2h6uv': {
      'fr': 'Se connecter',
      'en': '',
    },
    'l2gnikc2': {
      'fr': 'Home',
      'en': '',
    },
  },
  // categorie
  {
    'f6nz6z6z': {
      'fr': 'Nos catégories',
      'en': '',
    },
    'kqtlrlgj': {
      'fr': 'Catégorie 1',
      'en': '',
    },
    'dgxvlrkz': {
      'fr': 'Catégorie 2',
      'en': '',
    },
    '3rti9nr4': {
      'fr': 'Catégorie 3',
      'en': '',
    },
    'dtum2ash': {
      'fr': 'Catégorie 4',
      'en': '',
    },
    'fppk5bxk': {
      'fr': 'Catégorie 5',
      'en': '',
    },
    '9ezydrot': {
      'fr': 'Catégorie 6',
      'en': '',
    },
    'seko6xtp': {
      'fr': 'Catégorie 7',
      'en': '',
    },
    'zrp9rsf4': {
      'fr': 'Technibat',
      'en': '',
    },
    'c17d9zvd': {
      'fr': 'Menu',
      'en': '',
    },
    '6mcq1df3': {
      'fr': 'Mon profile',
      'en': '',
    },
    'fbg5ykkh': {
      'fr': 'Modifier mon code',
      'en': '',
    },
    'qlhwf7m8': {
      'fr': 'Mes commandes',
      'en': '',
    },
    'hmajl68e': {
      'fr': 'Notifications',
      'en': '',
    },
    'iwvozg1e': {
      'fr': 'Home',
      'en': '',
    },
    '03rmna25': {
      'fr': 'Catégories',
      'en': '',
    },
    '0kslnizh': {
      'fr': 'Mes envies',
      'en': '',
    },
    'l8zch5gs': {
      'fr': 'Mon panier',
      'en': '',
    },
    '6z8gmyar': {
      'fr': 'Visiter notre site web',
      'en': '',
    },
    '8qymnqmr': {
      'fr': 'Se déconnecter',
      'en': '',
    },
    'l6287nrd': {
      'fr': 'Se connecter',
      'en': '',
    },
    'zsq58b96': {
      'fr': 'categories',
      'en': '',
    },
  },
  // favoris
  {
    'mbjit7ht': {
      'fr': 'Article favoris',
      'en': '',
    },
    'xtvgcij1': {
      'fr': 'Tondeuse à gazon',
      'en': '',
    },
    '3ih6j9xf': {
      'fr': '75 000 FCFA',
      'en': '',
    },
    'acswpxtj': {
      'fr': 'Tondeuse à gazon',
      'en': '',
    },
    '959az44r': {
      'fr': '75 000 FCFA',
      'en': '',
    },
    'fetkjwbk': {
      'fr': 'Tondeuse à gazon',
      'en': '',
    },
    'usytbbmf': {
      'fr': '75 000 FCFA',
      'en': '',
    },
    'g6yrt76m': {
      'fr': 'Tondeuse à gazon',
      'en': '',
    },
    'ztezm7tt': {
      'fr': '75 000 FCFA',
      'en': '',
    },
    'h25kfvnr': {
      'fr': 'Tondeuse à gazon',
      'en': '',
    },
    '57r1exik': {
      'fr': '75 000 FCFA',
      'en': '',
    },
    't92t859w': {
      'fr': 'Technibat',
      'en': '',
    },
    'hognhxt5': {
      'fr': 'Favoris',
      'en': '',
    },
  },
  // detailProduit
  {
    'pnnstulp': {
      'fr': 'Terrazzo Vénitien',
      'en': '',
    },
    'uxjl555t': {
      'fr': '35 000 FCFA',
      'en': '',
    },
    'ldbffh39': {
      'fr': 'Description',
      'en': '',
    },
    'q5ii53o7': {
      'fr': 'Voir les avis',
      'en': '',
    },
    'n74m07w5': {
      'fr': 'Small',
      'en': '',
    },
    '0bi0oizp': {
      'fr': 'Medium',
      'en': '',
    },
    'v1sc9m9y': {
      'fr': 'Large',
      'en': '',
    },
    'vn2vzusa': {
      'fr': 'Choisissez la taille',
      'en': '',
    },
    'j39y1l4o': {
      'fr': 'Ajouter au panier',
      'en': '',
    },
    'nk7p17x1': {
      'fr': 'Détails',
      'en': '',
    },
    'k9z0hfzp': {
      'fr': 'Home',
      'en': '',
    },
  },
  // Decription
  {
    'rmo8v4x1': {
      'fr': 'Plus de détails',
      'en': '',
    },
    'qvbl4zey': {
      'fr':
          'Le Terrazzo Vénitien est un matériau artisanal exceptionnel, composé de fragments de marbre, de granite, de verre ou d\'autres matériaux mélangés à du ciment.\nChaque dalle de Terrazzo Vénitien est un chef-d\'œuvre en soi, créée à la main par des artisans qualifiés, apportant une touche d\'art et de sophistication à tout espace',
      'en': '',
    },
    '6ud7kc21': {
      'fr': 'Caractéristique',
      'en': '',
    },
    'zkac96i7': {
      'fr':
          'Le Terrazzo Vénitien est un matériau artisanal exceptionnel, composé de fragments de marbre, de granite, de verre ou d\'autres matériaux mélangés à du ciment.\nChaque dalle de Terrazzo Vénitien est un chef-d\'œuvre en soi, créée à la main par des artisans qualifiés, apportant une touche d\'art et de sophistication à tout espace',
      'en': '',
    },
    'we2iads2': {
      'fr': 'Description',
      'en': '',
    },
    'udolqexq': {
      'fr': 'Home',
      'en': '',
    },
  },
  // MonPanier
  {
    'ti33boyq': {
      'fr': 'Mon panier',
      'en': '',
    },
    'pe7tk5cl': {
      'fr': 'Tondeuse à gazon',
      'en': '',
    },
    '3uc7gz8u': {
      'fr': '75 000 FCFA',
      'en': '',
    },
    'oiupot0q': {
      'fr': 'Supprimer du panier',
      'en': '',
    },
    '4p2tb3lq': {
      'fr': 'Quantité :',
      'en': '',
    },
    '9no14tif': {
      'fr': '2',
      'en': '',
    },
    'nj0exzk6': {
      'fr': 'Total sans frais de livraiosn :',
      'en': '',
    },
    'uv7wfk4a': {
      'fr': '150 000 FCFA',
      'en': '',
    },
    '4gp9dvle': {
      'fr': 'Finaliser ma commande',
      'en': '',
    },
    'pvtwh4x6': {
      'fr': 'Mon panier',
      'en': '',
    },
  },
  // ValidCommande
  {
    'wrvjla2v': {
      'fr': 'Tondeuse à gazon',
      'en': '',
    },
    'bm0qykl5': {
      'fr': '75 000 FCFA',
      'en': '',
    },
    '4y8t6aiy': {
      'fr': 'Quantité :',
      'en': '',
    },
    'npb08vrs': {
      'fr': '2',
      'en': '',
    },
    '3zthdf9x': {
      'fr': 'Moyen de payement',
      'en': '',
    },
    '842x77xm': {
      'fr': 'Régler par carte bancaire',
      'en': '',
    },
    '1i1cv63p': {
      'fr': 'Régler par mobile  money',
      'en': '',
    },
    's4932io6': {
      'fr': 'Régler à la livraison',
      'en': '',
    },
    '5ziu76uz': {
      'fr': 'Please select...',
      'en': '',
    },
    'xgrcm7a1': {
      'fr': 'Search for an item...',
      'en': '',
    },
    'l9d8fghj': {
      'fr': 'Aucun moyen de payement n\'a été choisi',
      'en': '',
    },
    'i6k4wqhg': {
      'fr': 'Désolé nous travillons encore sur cette fonctionnalité',
      'en': '',
    },
    'c9lfk7mp': {
      'fr': 'Abidjan',
      'en': '',
    },
    'auugnfm7': {
      'fr': 'bouaké',
      'en': '',
    },
    '4ys90agr': {
      'fr': 'Gagnoa',
      'en': '',
    },
    'z872tf4u': {
      'fr': 'Ville...',
      'en': '',
    },
    '70kp3eeo': {
      'fr': 'Search for an item...',
      'en': '',
    },
    'reehydeh': {
      'fr': 'Option 1',
      'en': '',
    },
    'rro7nqxf': {
      'fr': 'Commune...',
      'en': '',
    },
    'g9ywc0ee': {
      'fr': 'Search for an item...',
      'en': '',
    },
    'glkmzbop': {
      'fr': 'Localisation (saisissez ou coler un lien Google map)',
      'en': '',
    },
    'mmfqn0v4': {
      'fr': 'Montant final :',
      'en': '',
    },
    '4rmz3ak8': {
      'fr': '151 000 FCFA',
      'en': '',
    },
    'txj60v8q': {
      'fr': 'prix de la livraison :',
      'en': '',
    },
    'kmx95zm7': {
      'fr': '1 000 FCFA',
      'en': '',
    },
    '5wy8mkjz': {
      'fr': 'Valider ma commande',
      'en': '',
    },
    '7gzl8hyw': {
      'fr': 'Ma commande',
      'en': '',
    },
    'sibr8qll': {
      'fr': 'Home',
      'en': '',
    },
  },
  // detailCategorie
  {
    'mthmoefw': {
      'fr': 'Categorie 1',
      'en': '',
    },
    'rru1ld5h': {
      'fr': 'Search...',
      'en': '',
    },
    'kg3febhf': {
      'fr': 'Nouveauté',
      'en': '',
    },
    'pru7dd4b': {
      'fr': 'En promo',
      'en': '',
    },
    'nrd0ryxb': {
      'fr': 'Please select...',
      'en': '',
    },
    'l8v1q9rw': {
      'fr': 'Search for an item...',
      'en': '',
    },
    'r48znnem': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    'x5wowmup': {
      'fr': 'Produit 1',
      'en': '',
    },
    '2m76xodr': {
      'fr': '50 000  FCFA',
      'en': '',
    },
    'nouathcn': {
      'fr': 'Ajouter au panier',
      'en': '',
    },
    '14df667x': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    'sebvklhc': {
      'fr': 'Produit 2',
      'en': '',
    },
    'vi7je4vj': {
      'fr': '35 000  FCFA',
      'en': '',
    },
    '2lwhtlxk': {
      'fr': 'Ajouter au panier',
      'en': '',
    },
    'wy6aiurq': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    '0x8yyung': {
      'fr': 'Produit 2',
      'en': '',
    },
    '6mxrdsoy': {
      'fr': '35 000  FCFA',
      'en': '',
    },
    'ascucj5g': {
      'fr': 'Ajouter au panier',
      'en': '',
    },
    'b1pu71e8': {
      'fr': 'Home',
      'en': '',
    },
  },
  // AuthPage
  {
    '05pjchbr': {
      'fr': 'Créer un compte',
      'en': '',
    },
    '1h97g6ac': {
      'fr': 'Création du compte',
      'en': '',
    },
    'kugypytq': {
      'fr': 'Commençons par remplir le formulaire ci-dessous.',
      'en': '',
    },
    'geevn19i': {
      'fr': 'Nom',
      'en': '',
    },
    'q86b14ks': {
      'fr': 'Prénom',
      'en': '',
    },
    '6vkp69q3': {
      'fr': 'Email',
      'en': '',
    },
    'xl1r7iqy': {
      'fr': 'Password',
      'en': '',
    },
    '343af084': {
      'fr': 'S\'inscrire',
      'en': '',
    },
    '9z7o7vy6': {
      'fr': 'Ou s\'inscrire avec',
      'en': '',
    },
    'qev025zn': {
      'fr': 'Continuer avec Google',
      'en': '',
    },
    '4nnv1ham': {
      'fr': 'Continuer avec  Apple',
      'en': '',
    },
    '82k5besa': {
      'fr': 'Se connecter',
      'en': '',
    },
    'roe4z82s': {
      'fr': 'Welcome Back',
      'en': '',
    },
    'ti3k5uo7': {
      'fr':
          'Remplissez les informations ci-dessous afin d\'accéder à votre compte.',
      'en': '',
    },
    'k4fmqe0n': {
      'fr': 'Email',
      'en': '',
    },
    '2qo1m0hm': {
      'fr': 'Password',
      'en': '',
    },
    'zdzj4tm7': {
      'fr': 'Se connecter',
      'en': '',
    },
    'j4o2ai75': {
      'fr': 'Ou se connecter avec',
      'en': '',
    },
    'iov0qfux': {
      'fr': 'Continuer avec Google',
      'en': '',
    },
    '1szdbutz': {
      'fr': 'Continuer avec Apple',
      'en': '',
    },
    '5z8ynf9i': {
      'fr': 'Mot de passe oublié ?',
      'en': '',
    },
    'v5p8leoy': {
      'fr': 'Home',
      'en': '',
    },
  },
  // welcome
  {
    'z4qg80fd': {
      'fr': 'Welcome',
      'en': '',
    },
    '9vv2zmf6': {
      'fr': 'Continuer',
      'en': '',
    },
    '8531oti6': {
      'fr': 'Home',
      'en': '',
    },
  },
  // AddPhoto
  {
    'd7cdcgbk': {
      'fr': 'Ajouter votre photo de profil',
      'en': '',
    },
    'gtyk11ol': {
      'fr': 'Choisir une photo',
      'en': '',
    },
    'vs7r61pg': {
      'fr': 'Enregistrer',
      'en': '',
    },
  },
  // ForgotPassword
  {
    'n2p4ukq4': {
      'fr': 'Back',
      'en': '',
    },
    'b3jw5qiq': {
      'fr': 'Réinitialiser votre mot de passe',
      'en': '',
    },
    'cams74o4': {
      'fr':
          'Nous vous enverrons un e-mail avec un lien pour réinitialiser votre mot de passe, veuillez saisir l\'e-mail associé à votre compte ci-dessous.',
      'en': '',
    },
    'l2stppm6': {
      'fr': 'Your email address...',
      'en': '',
    },
    'm1kha6u5': {
      'fr': 'Enter your email...',
      'en': '',
    },
    '2fu0ndbi': {
      'fr': 'Send Link',
      'en': '',
    },
    'e7ei6jqb': {
      'fr': 'Home',
      'en': '',
    },
  },
  // PageVoirPlus
  {
    'dteix0cr': {
      'fr': 'Spécial promo',
      'en': '',
    },
    '7j2towjz': {
      'fr': 'Search...',
      'en': '',
    },
    '5lqvrkcr': {
      'fr': 'Nouveauté',
      'en': '',
    },
    'pmq6xp86': {
      'fr': 'En promo',
      'en': '',
    },
    'npoxjhtw': {
      'fr': 'Choisissez votre marque...',
      'en': '',
    },
    '20js0c3v': {
      'fr': 'Search for an item...',
      'en': '',
    },
    'fgdzc5br': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    'hpl50rf3': {
      'fr': 'Produit 1',
      'en': '',
    },
    'b88lmhxq': {
      'fr': '50 000  FCFA',
      'en': '',
    },
    'whqvr64w': {
      'fr': 'Ajouter au panier',
      'en': '',
    },
    'sxa1t0ml': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    'bc1sum4j': {
      'fr': 'Produit 2',
      'en': '',
    },
    'uns3nhg4': {
      'fr': '35 000  FCFA',
      'en': '',
    },
    'img00ejx': {
      'fr': 'Ajouter au panier',
      'en': '',
    },
    'ze2ow0wi': {
      'fr': 'Nom de catégorie',
      'en': '',
    },
    'tzc5rcii': {
      'fr': 'Produit 2',
      'en': '',
    },
    'l8u6r159': {
      'fr': '35 000  FCFA',
      'en': '',
    },
    'gbno998h': {
      'fr': 'Ajouter au panier',
      'en': '',
    },
    'k9sbv0uu': {
      'fr': 'Home',
      'en': '',
    },
  },
  // avis
  {
    'awb4zzwc': {
      'fr': 'Avis',
      'en': '',
    },
    '5cggw5gw': {
      'fr': 'Nom user',
      'en': '',
    },
    'oejjp1oj': {
      'fr': 'Hello World',
      'en': '',
    },
    'agw75jj6': {
      'fr': 'Nom user',
      'en': '',
    },
    'ec6ezr71': {
      'fr': 'Hello World',
      'en': '',
    },
    'k91do4sk': {
      'fr': 'Nom user',
      'en': '',
    },
    'g48n9k77': {
      'fr': 'Hello World',
      'en': '',
    },
    '8hcxnvxf': {
      'fr': 'Nom user',
      'en': '',
    },
    '1jat2dur': {
      'fr': 'Hello World',
      'en': '',
    },
    'lmvljy86': {
      'fr': 'Nom user',
      'en': '',
    },
    'rt6snmjg': {
      'fr': 'Hello World',
      'en': '',
    },
    'cqyx129g': {
      'fr': 'Nom user',
      'en': '',
    },
    '20f5l15p': {
      'fr': 'Hello World',
      'en': '',
    },
    'h1rg52jj': {
      'fr': 'Donnez votre avis sur ce produit...',
      'en': '',
    },
    'u08umaqz': {
      'fr': 'Poster',
      'en': '',
    },
    '9fd6m2cc': {
      'fr': 'Home',
      'en': '',
    },
  },
  // notification
  {
    'sdp82mj3': {
      'fr': 'Notification 1',
      'en': '',
    },
    'jwcskiip': {
      'fr': 'Mar 8, 2023',
      'en': '',
    },
    'vi2a2lxl': {
      'fr': 'Notification 2',
      'en': '',
    },
    '9xvrihhb': {
      'fr': 'Mar 8, 2023',
      'en': '',
    },
    'stjc16tf': {
      'fr': 'Notification 3',
      'en': '',
    },
    '4zm43nqt': {
      'fr': 'Mar 8, 2023',
      'en': '',
    },
    'jp5ea8q7': {
      'fr': 'Notification 4',
      'en': '',
    },
    '6z8rk1qk': {
      'fr': 'Mar 8, 2023',
      'en': '',
    },
    '9if9ipdg': {
      'fr': 'Notification 4',
      'en': '',
    },
    '4o4jl8mr': {
      'fr': 'Mar 8, 2023',
      'en': '',
    },
    'lykcio5o': {
      'fr': 'Notification',
      'en': '',
    },
    'ie0evqjn': {
      'fr': 'Home',
      'en': '',
    },
  },
  // ChangeProfil
  {
    'lepmjq0e': {
      'fr': 'Nom',
      'en': '',
    },
    'yk4pa5d0': {
      'fr': 'Prénom',
      'en': '',
    },
    '1k8u6uka': {
      'fr': 'Email',
      'en': '',
    },
    '13wrg59z': {
      'fr': 'Save Changes',
      'en': '',
    },
    '6w04ja6f': {
      'fr': 'Modifier votre profile',
      'en': '',
    },
  },
  // Miscellaneous
  {
    '717iozbo': {
      'fr': '',
      'en': '',
    },
    '82x8qlak': {
      'fr': '',
      'en': '',
    },
    'glt1eas8': {
      'fr': '',
      'en': '',
    },
    '2904g9n3': {
      'fr': '',
      'en': '',
    },
    '4g87h6sd': {
      'fr': '',
      'en': '',
    },
    'jwowbift': {
      'fr': '',
      'en': '',
    },
    '3be9wqkp': {
      'fr': '',
      'en': '',
    },
    'yzkbhc2g': {
      'fr': '',
      'en': '',
    },
    'hhyzoaez': {
      'fr': '',
      'en': '',
    },
    '7x1bufb3': {
      'fr': '',
      'en': '',
    },
    'dox1pwef': {
      'fr': '',
      'en': '',
    },
    '9hd9yt39': {
      'fr': '',
      'en': '',
    },
    '4k2f0hcz': {
      'fr': '',
      'en': '',
    },
    'xrjlvm82': {
      'fr': '',
      'en': '',
    },
    '32sy5vjh': {
      'fr': '',
      'en': '',
    },
    '3ttdnolz': {
      'fr': '',
      'en': '',
    },
    'klrwy1ut': {
      'fr': '',
      'en': '',
    },
    'ojdgteej': {
      'fr': '',
      'en': '',
    },
    '79wstbgo': {
      'fr': '',
      'en': '',
    },
    'abq570dz': {
      'fr': '',
      'en': '',
    },
    '668m1n35': {
      'fr': '',
      'en': '',
    },
    '20ynliyt': {
      'fr': '',
      'en': '',
    },
    '03i89p9u': {
      'fr': '',
      'en': '',
    },
    'm55xu80d': {
      'fr': '',
      'en': '',
    },
    '84us1o8e': {
      'fr': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
