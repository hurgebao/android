.class public Lorg/spongycastle/asn1/eac/CVCertificate;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CVCertificate.java"


# static fields
.field public static ReferenceEncoding:Ljava/lang/String;

.field private static bodyValid:I

.field private static signValid:I


# instance fields
.field private certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

.field private signature:[B

.field private valid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    sput v0, Lorg/spongycastle/asn1/eac/CVCertificate;->bodyValid:I

    .line 32
    const/4 v0, 0x2

    sput v0, Lorg/spongycastle/asn1/eac/CVCertificate;->signValid:I

    .line 35
    const-string v0, "ISO-8859-1"

    sput-object v0, Lorg/spongycastle/asn1/eac/CVCertificate;->ReferenceEncoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 7

    .prologue
    .line 195
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 197
    .local v1, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget v2, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    sget v3, Lorg/spongycastle/asn1/eac/CVCertificate;->signValid:I

    sget v4, Lorg/spongycastle/asn1/eac/CVCertificate;->bodyValid:I

    or-int/2addr v3, v4

    if-eq v2, v3, :cond_0

    .line 199
    const/4 v2, 0x0

    .line 212
    :goto_0
    return-object v2

    .line 201
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 205
    :try_start_0
    new-instance v2, Lorg/spongycastle/asn1/DERApplicationSpecific;

    const/4 v3, 0x0

    const/16 v4, 0x37

    new-instance v5, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v6, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->signature:[B

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v3, v4, v5}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    new-instance v2, Lorg/spongycastle/asn1/DERApplicationSpecific;

    const/16 v3, 0x21

    invoke-direct {v2, v3, v1}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ILorg/spongycastle/asn1/ASN1EncodableVector;)V

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "unable to convert signature!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
