.class public Lorg/spongycastle/cms/CMSAlgorithm;
.super Ljava/lang/Object;
.source "CMSAlgorithm.java"


# static fields
.field public static final AES128_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final AES128_WRAP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final AES192_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final AES192_WRAP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final AES256_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final AES256_WRAP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final CAMELLIA128_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final CAMELLIA128_WRAP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final CAMELLIA192_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final CAMELLIA192_WRAP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final CAMELLIA256_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final CAMELLIA256_WRAP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final CAST5_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final DES_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final DES_EDE3_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final DES_EDE3_WRAP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final ECDH_SHA1KDF:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final ECMQV_SHA1KDF:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final GOST3411:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final IDEA_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final MD5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final RC2_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final RIPEMD128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final RIPEMD160:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final RIPEMD256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final SEED_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final SEED_WRAP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final SHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final SHA224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final SHA256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final SHA384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final SHA512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->DES_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 16
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->DES_EDE3_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 17
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->RC2_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->RC2_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 18
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.188.7.1.1.2"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->IDEA_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 19
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.840.113533.7.66.10"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->CAST5_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 20
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->AES128_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 21
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->AES192_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->AES256_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 23
    sget-object v0, Lorg/spongycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia128_cbc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->CAMELLIA128_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 24
    sget-object v0, Lorg/spongycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia192_cbc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->CAMELLIA192_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 25
    sget-object v0, Lorg/spongycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia256_cbc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->CAMELLIA256_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    sget-object v0, Lorg/spongycastle/asn1/kisa/KISAObjectIdentifiers;->id_seedCBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->SEED_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_CMS3DESwrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->DES_EDE3_WRAP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_wrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->AES128_WRAP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 30
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_wrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->AES192_WRAP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->AES256_WRAP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    sget-object v0, Lorg/spongycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia128_wrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->CAMELLIA128_WRAP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 33
    sget-object v0, Lorg/spongycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia192_wrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->CAMELLIA192_WRAP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 34
    sget-object v0, Lorg/spongycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia256_wrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->CAMELLIA256_WRAP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 35
    sget-object v0, Lorg/spongycastle/asn1/kisa/KISAObjectIdentifiers;->id_npki_app_cmsSeed_wrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->SEED_WRAP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 37
    sget-object v0, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->dhSinglePass_stdDH_sha1kdf_scheme:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->ECDH_SHA1KDF:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 38
    sget-object v0, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->mqvSinglePass_sha1kdf_scheme:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->ECMQV_SHA1KDF:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 40
    sget-object v0, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->SHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->SHA224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 42
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->SHA256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 43
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->SHA384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 44
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->SHA512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 45
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->MD5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 46
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->GOST3411:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 47
    sget-object v0, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->RIPEMD128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 48
    sget-object v0, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd160:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->RIPEMD160:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 49
    sget-object v0, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->RIPEMD256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
