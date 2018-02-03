.class public Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "RSASSAPSSparams.java"


# static fields
.field public static final DEFAULT_HASH_ALGORITHM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field public static final DEFAULT_MASK_GEN_FUNCTION:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field public static final DEFAULT_SALT_LENGTH:Lorg/spongycastle/asn1/ASN1Integer;

.field public static final DEFAULT_TRAILER_FIELD:Lorg/spongycastle/asn1/ASN1Integer;


# instance fields
.field private hashAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private maskGenAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private saltLength:Lorg/spongycastle/asn1/ASN1Integer;

.field private trailerField:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_HASH_ALGORITHM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 26
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_HASH_ALGORITHM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_MASK_GEN_FUNCTION:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 27
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x14

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_SALT_LENGTH:Lorg/spongycastle/asn1/ASN1Integer;

    .line 28
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_TRAILER_FIELD:Lorg/spongycastle/asn1/ASN1Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 50
    sget-object v0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_HASH_ALGORITHM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 51
    sget-object v0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_MASK_GEN_FUNCTION:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 52
    sget-object v0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_SALT_LENGTH:Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lorg/spongycastle/asn1/ASN1Integer;

    .line 53
    sget-object v0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_TRAILER_FIELD:Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lorg/spongycastle/asn1/ASN1Integer;

    .line 54
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v3, 0x1

    .line 70
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 71
    sget-object v2, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_HASH_ALGORITHM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v2, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 72
    sget-object v2, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_MASK_GEN_FUNCTION:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v2, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 73
    sget-object v2, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_SALT_LENGTH:Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v2, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lorg/spongycastle/asn1/ASN1Integer;

    .line 74
    sget-object v2, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_TRAILER_FIELD:Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v2, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lorg/spongycastle/asn1/ASN1Integer;

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 78
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 80
    .local v1, "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 95
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unknown tag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :pswitch_0
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 76
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :pswitch_1
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_1

    .line 89
    :pswitch_2
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_1

    .line 92
    :pswitch_3
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_1

    .line 98
    .end local v1    # "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :cond_0
    return-void

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/ASN1Integer;)V
    .locals 0
    .param p1, "hashAlgorithm"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "maskGenAlgorithm"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "saltLength"    # Lorg/spongycastle/asn1/ASN1Integer;
    .param p4, "trailerField"    # Lorg/spongycastle/asn1/ASN1Integer;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 63
    iput-object p2, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 64
    iput-object p3, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lorg/spongycastle/asn1/ASN1Integer;

    .line 65
    iput-object p4, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lorg/spongycastle/asn1/ASN1Integer;

    .line 66
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 33
    instance-of v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;

    if-eqz v0, :cond_0

    .line 35
    check-cast p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;

    .line 42
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 37
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 39
    new-instance v0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 42
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getHashAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getMaskGenAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getSaltLength()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getTrailerField()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 148
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 150
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_HASH_ALGORITHM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 155
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_MASK_GEN_FUNCTION:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v4, v4, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 160
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_SALT_LENGTH:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 162
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 165
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_TRAILER_FIELD:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 167
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 170
    :cond_3
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
