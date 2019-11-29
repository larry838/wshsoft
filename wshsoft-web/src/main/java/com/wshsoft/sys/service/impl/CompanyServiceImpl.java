package com.wshsoft.sys.service.impl;

import java.util.List;
import java.util.ArrayList;

import com.wshsoft.common.constant.SysConstants;
import com.wshsoft.common.core.domain.Ztree;
import com.wshsoft.common.exception.BusinessException;
import com.wshsoft.common.utils.StringUtils;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wshsoft.sys.mapper.CompanyMapper;
import com.wshsoft.sys.domain.Company;
import com.wshsoft.sys.service.CompanyService;

/**
 * 公司 Service业务层实现
 *
 * @author Carry xie
 * @date 2019-11-29
 */
 
@Service
public class CompanyServiceImpl extends ServiceImpl<CompanyMapper, Company> implements CompanyService {
   
    @Autowired
    private CompanyMapper companyMapper;

    /**
     * 查询公司列表
     * 
     * @param company 公司
     * @return 公司
     */
    @Override
    public List<Company> selectCompanyList(Company company) {
        return companyMapper.selectCompanyList(company);
    }

    /**
     * 查询公司树列表
     * 
     * @return 所有公司信息
     */
    @Override
    public List<Ztree> selectCompanyTree() {
        List<Company> companyList = companyMapper.selectCompanyList(new Company());
        List<Ztree> ztrees = new ArrayList<Ztree>();
        for (Company company : companyList)
        {
            Ztree ztree = new Ztree();
            ztree.setId(company.getCompanyId());
            ztree.setpId(company.getParentId());
            ztree.setName(company.getCompanyName());
            ztree.setTitle(company.getCompanyName());
            ztrees.add(ztree);
        }
        return ztrees;
    }
 
     /**
     * 新增公司
     * 
     * @param company 公司
     * @return 结果
     */
    @Override
    public int insertCompany(Company company)
    {
        Company info = companyMapper.selectById(company.getParentId());
        // 如果父节点不为"正常"状态,则不允许新增子节点
        if (!SysConstants.NORMAL.equals(info.getStatus()))
        {
            throw new BusinessException("公司停用，不允许新增");
        }
        company.setAncestors(info.getAncestors() + "," + company.getParentId());
        return companyMapper.insert(company);
    }   
 
    /**
     * 修改公司
     * 
     * @param company 公司
     * @return 结果
     */
    @Override
    @Transactional
    public int updateCompany(Company company)
    {
        Company newParentCompany = companyMapper.selectCompanyById(company.getParentId());
        Company oldCompany = selectCompanyById(company.getCompanyId());
        if (StringUtils.isNotNull(newParentCompany) && StringUtils.isNotNull(oldCompany))
        {
            String newAncestors = newParentCompany.getAncestors() + "," + newParentCompany.getCompanyId();
            String oldAncestors = oldCompany.getAncestors();
            company.setAncestors(newAncestors);
            updateCompanyChildren(company.getCompanyId(), newAncestors, oldAncestors);
        }
        int result = companyMapper.updateById(company);
        if (SysConstants.NORMAL.equals(company.getStatus()))
        {
            // 如果该公司是启用状态，则启用该公司的所有上级公司
            updateParentCompanyStatus(company);
        }
        return result;
    }
     /**
     * 修改该公司的父级公司状态
     * 
     * @param company 当前公司
     */
    private void updateParentCompanyStatus(Company company)
    {
        company = companyMapper.selectCompanyById(company.getCompanyId());
        companyMapper.updateCompanyStatus(company);
    }

    /**
     * 修改子元素关系
     * 
     * @param companyId 被修改的公司ID
     * @param newAncestors 新的父ID集合
     * @param oldAncestors 旧的父ID集合
     */
    private void updateCompanyChildren(Long companyId, String newAncestors, String oldAncestors)
    {
        List<Company> children = companyMapper.selectChildrenCompanyById(companyId);
        for (Company child : children)
        {
            child.setAncestors(child.getAncestors().replace(oldAncestors, newAncestors));
        }
        if (children.size() > 0)
        {
            companyMapper.updateCompanyChildren(children);
        }
    }
  
    /**
     * 查询公司
     * 
     * @param companyId 公司ID
     * @return 公司
     */
    @Override
    public Company selectCompanyById(Long companyId)
    {
        return companyMapper.selectCompanyById(companyId);
    } 
    /**
     * 校验公司名称是否唯一
     * 
     * @param company 公司信息
     * @return 结果
     */
    public String checkCompanyNameUnique(Company company) {
        Long companyId = StringUtils.isNull(company.getCompanyId()) ? -1L : company.getCompanyId();
        Company info = companyMapper.checkCompanyNameUnique(company.getCompanyName(), company.getParentId());
        if (StringUtils.isNotNull(info) && info.getCompanyId().longValue() != companyId.longValue())
        {
            return SysConstants.BUSS_NAME_UNIQUE;
        }
        return SysConstants.BUSS_NAME_NOT_UNIQUE;
    }
    
    /**
     * 查询公司个数
     * 
     * @param parentId 父公司ID
     * @return 结果
     */
    public int selectCompanyCount(Long parentId) {
          Company company = new Company();
          company.setParentId(parentId);
          return companyMapper.selectCompanyCount(company);
    }

    /**
     * 查询公司是否存在使用
     * 
     * @param companyId 公司ID
     * @return 结果 true 存在 false 不存在
     */
    public boolean checkCompanyExistUse(Long companyId) {
        int result = companyMapper.checkCompanyExistUse(companyId);
        return result > 0 ? true : false;
    }     
}