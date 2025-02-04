const {onCall, HttpsError} = require("firebase-functions/v2/https");
const {setGlobalOptions} = require("firebase-functions/v2");
const {logger} = require("firebase-functions/v2");

setGlobalOptions({region: "europe-west1"});

// Transformation des données Firestore pour Algolia
const transformAdData = (payload) => {
  if (!payload) {
    logger.error("invalid-argument");
    throw new HttpsError(
        "invalid-argument",
        "Les données fournies sont invalides ou incomplètes.",
    );
  }

  return {
    objectID: payload.id,
    title: payload.title,
    description: payload.description,
    price: payload.price ?? null,
    adType: payload.adType,
    city: payload.city.city,
    postcode: payload.city.postcode,
    renterId: payload.renterId,
    photosUrl: payload.photosUrl ? payload.photosUrl : [],
    _geoloc: {
      lat: payload.city.lat,
      lng: payload.city.long,
    },
    renterName: payload.renterName,
    renterPhotoUrl: payload.renterPhotoUrl?? null,
    creationDate: payload.creationDate,
  };
};

// Fonction Cloud pour transformer les données
exports.transformAdDocument = onCall((payload) => {
  try {
    const data = payload.data;

    const transformedData = transformAdData(data);

    return transformedData;
  } catch (error) {
    logger.error("Erreur lors de la transformation :", error);
    throw error;
  }
});
