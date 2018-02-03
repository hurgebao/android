.class public Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;
.super Ljava/lang/Object;
.source "V2TBSCertListGenerator.java"


# static fields
.field private static final reasons:[Lorg/spongycastle/asn1/ASN1Sequence;


# instance fields
.field private crlentries:Lorg/spongycastle/asn1/ASN1EncodableVector;

.field private extensions:Lorg/spongycastle/asn1/x509/Extensions;

.field private nextUpdate:Lorg/spongycastle/asn1/x509/Time;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/spongycastle/asn1/ASN1Sequence;

    sput-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    .line 53
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    aput-object v1, v0, v2

    .line 54
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-static {v3}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    aput-object v1, v0, v3

    .line 55
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    aput-object v1, v0, v4

    .line 56
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-static {v5}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    aput-object v1, v0, v5

    .line 57
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-static {v6}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    aput-object v1, v0, v6

    .line 58
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 59
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x6

    const/4 v2, 0x6

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 60
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x7

    const/4 v2, 0x7

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 61
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 62
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    const/16 v1, 0x9

    const/16 v2, 0x9

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 63
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    const/16 v1, 0xa

    const/16 v2, 0xa

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 43
    iput-object v1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/spongycastle/asn1/x509/Time;

    .line 44
    iput-object v1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    .line 45
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Lorg/spongycastle/asn1/ASN1EncodableVector;

    .line 68
    return-void
.end method

.method private static createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;
    .locals 6
    .param p0, "reasonCode"    # I

    .prologue
    .line 248
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 250
    .local v2, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-static {p0}, Lorg/spongycastle/asn1/x509/CRLReason;->lookup(I)Lorg/spongycastle/asn1/x509/CRLReason;

    move-result-object v0

    .line 254
    .local v0, "crlReason":Lorg/spongycastle/asn1/x509/CRLReason;
    :try_start_0
    sget-object v3, Lorg/spongycastle/asn1/x509/Extension;->reasonCode:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 255
    new-instance v3, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/CRLReason;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v3

    .line 257
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error encoding reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
