#pragma once

#ifndef CIV5_WAR_TYPES_H
#define CIV5_WAR_TYPES_H

class CvWarTypeEntry : public CvBaseInfo
{
public:
	CvWarTypeEntry(void);
	~CvWarTypeEntry(void);

	virtual bool CacheResults(Database::Results& kResults, CvDatabaseUtility& kUtility);

	int getDiploPenalty() const;

protected:
	int m_iDiploPenalty;
private:
	CvWarTypeEntry(const CvWarTypeEntry&);
	CvWarTypeEntry& operator=(const CvWarTypeEntry&);
};

class CvWarTypesXMLEntries
{
public:
	CvWarTypesXMLEntries(void);
	~CvWarTypesXMLEntries(void);

	// Accessor functions
	std::vector<CvWarTypeEntry*>& GetWarTypeEntries();
	int GetNumWarTypes();
	CvWarTypeEntry* GetEntry(int index);

	void DeleteArray();

private:
	std::vector<CvWarTypeEntry*> m_paWarTypeEntries;
};
#endif