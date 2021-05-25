#' @title RepSeqData
#' @description RepSeqExperiment data set built from aligned TCR sequences using MiXCR. MiXCR respecitvely rTCR aligned data are also avaiblable in extdata/mixrc respectively extdata/rtcr
#' @format RepSeqExperiment object and gz-compressed txt/csv tab-delimited :
#' \describe{
#'   \item{\code{system.file(file.path('extdata/mixcr'), package='RepSeqData')}}{Raw MiXCR aligned data sets}
#'   \item{\code{system.file(file.path('extdata/rtcr'), package='RepSeqData')}}{Raw rTCR aligned data sets}
#'   \item{\code{system.file(file.path('extdata/sampledata.txt'), package='RepSeqData')}}{Text tab-delimited sample metadata, sample information in columns, individual sample in rows}
#'}
#' @source \url{https://github.com/ph-pham/RepSeqData}
"RepSeqData"
