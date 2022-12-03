#include "CvGameCoreDLLPCH.h"
#include "CvGameCoreDLLUtil.h"
#include "ICvDLLUserInterface.h"
#include "CvGameCoreUtils.h"
#include "CvInfosSerializationHelper.h"
#include "cvStopWatch.h"

// must be included after all other headers
#include "LintFree.h"

#if defined(MOD_BALANCE_CORE)

CvWarTypeEntry::CvWarTypeEntry(void):
	m_iDiploPenalty(0)
{
}

CvWarTypeEntry::~CvWarTypeEntry(void)
{
}

int CvWarTypeEntry::getDiploPenalty() const
{
	return m_iDiploPenalty;
}


bool CvWarTypeEntry::CacheResults(Database::Results& kResults, CvDatabaseUtility& kUtility)
{
	if (!CvBaseInfo::CacheResults(kResults, kUtility))
		return false;

	m_iDiploPenalty = kResults.GetInt("BaseFranchises");
	
	return true;
}
#endif